proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a35tcpg236-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/njs82.DREXEL/sh_reg/sh_reg.cache/wt [current_project]
  set_property parent.project_path C:/Users/njs82.DREXEL/sh_reg/sh_reg.xpr [current_project]
  set_property ip_output_repo C:/Users/njs82.DREXEL/sh_reg/sh_reg.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/njs82.DREXEL/sh_reg/sh_reg.runs/synth_1/sh_reg_test.dcp
  link_design -top sh_reg_test -part xc7a35tcpg236-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force sh_reg_test_opt.dcp
  catch { report_drc -file sh_reg_test_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force sh_reg_test_placed.dcp
  catch { report_io -file sh_reg_test_io_placed.rpt }
  catch { report_utilization -file sh_reg_test_utilization_placed.rpt -pb sh_reg_test_utilization_placed.pb }
  catch { report_control_sets -verbose -file sh_reg_test_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force sh_reg_test_routed.dcp
  catch { report_drc -file sh_reg_test_drc_routed.rpt -pb sh_reg_test_drc_routed.pb -rpx sh_reg_test_drc_routed.rpx }
  catch { report_methodology -file sh_reg_test_methodology_drc_routed.rpt -rpx sh_reg_test_methodology_drc_routed.rpx }
  catch { report_power -file sh_reg_test_power_routed.rpt -pb sh_reg_test_power_summary_routed.pb -rpx sh_reg_test_power_routed.rpx }
  catch { report_route_status -file sh_reg_test_route_status.rpt -pb sh_reg_test_route_status.pb }
  catch { report_clock_utilization -file sh_reg_test_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file sh_reg_test_timing_summary_routed.rpt -rpx sh_reg_test_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force sh_reg_test_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

