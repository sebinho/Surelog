-nopython -parse -d coveruhdm -sverilog -verbose -Iexternal/basejump_stl/bsg_dataflow -Iexternal/basejump_stl/bsg_mem -Iexternal/basejump_stl/bsg_misc -Iexternal/basejump_stl/bsg_test -Iexternal/basejump_stl/bsg_noc -Ibp_common/src/include -Ibp_fe/src/include -Ibp_be/src/include -Ibp_be/src/include/bp_be_dcache -Ibp_me/src/include/v -Ibp_top/src/include external/basejump_stl/bsg_noc/bsg_noc_pkg.v external/basejump_stl/bsg_noc/bsg_wormhole_router_pkg.v bp_common/src/include/bp_common_rv64_pkg.vh bp_common/src/include/bp_common_pkg.vh bp_common/src/include/bp_common_aviary_pkg.vh bp_fe/src/include/bp_fe_icache_pkg.vh bp_fe/src/include/bp_fe_pkg.vh bp_be/src/include/bp_be_pkg.vh bp_be/src/include/bp_be_dcache/bp_be_dcache_pkg.vh bp_me/src/include/v/bp_cce_pkg.v bp_me/src/include/v/bp_me_pkg.vh bp_top/src/include/bp_cfg_link_pkg.vh external/basejump_stl/bsg_async/bsg_async_fifo.v external/basejump_stl/bsg_async/bsg_launch_sync_sync.v external/basejump_stl/bsg_async/bsg_async_ptr_gray.v external/basejump_stl/bsg_dataflow/bsg_channel_tunnel.v external/basejump_stl/bsg_dataflow/bsg_channel_tunnel_in.v external/basejump_stl/bsg_dataflow/bsg_channel_tunnel_out.v external/basejump_stl/bsg_dataflow/bsg_1_to_n_tagged_fifo.v external/basejump_stl/bsg_dataflow/bsg_1_to_n_tagged.v external/basejump_stl/bsg_dataflow/bsg_fifo_1r1w_large.v external/basejump_stl/bsg_dataflow/bsg_fifo_1rw_large.v external/basejump_stl/bsg_dataflow/bsg_serial_in_parallel_out.v external/basejump_stl/bsg_dataflow/bsg_one_fifo.v external/basejump_stl/bsg_dataflow/bsg_round_robin_2_to_2.v external/basejump_stl/bsg_dataflow/bsg_fifo_1r1w_pseudo_large.v external/basejump_stl/bsg_dataflow/bsg_fifo_1r1w_small.v external/basejump_stl/bsg_dataflow/bsg_fifo_tracker.v external/basejump_stl/bsg_dataflow/bsg_flow_counter.v external/basejump_stl/bsg_dataflow/bsg_parallel_in_serial_out_dynamic.v external/basejump_stl/bsg_dataflow/bsg_round_robin_n_to_1.v external/basejump_stl/bsg_dataflow/bsg_serial_in_parallel_out_dynamic.v external/basejump_stl/bsg_dataflow/bsg_shift_reg.v external/basejump_stl/bsg_dataflow/bsg_two_fifo.v external/basejump_stl/bsg_mem/bsg_cam_1r1w.v external/basejump_stl/bsg_mem/bsg_mem_1r1w.v external/basejump_stl/bsg_mem/bsg_mem_1r1w_sync.v external/basejump_stl/bsg_mem/bsg_mem_1r1w_sync_synth.v external/basejump_stl/bsg_mem/bsg_mem_1r1w_synth.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync_mask_write_bit.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync_mask_write_bit_synth.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync_mask_write_byte.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync_mask_write_byte_synth.v external/basejump_stl/bsg_mem/bsg_mem_1rw_sync_synth.v external/basejump_stl/bsg_mem/bsg_mem_2r1w_sync.v external/basejump_stl/bsg_mem/bsg_mem_2r1w_sync_synth.v external/basejump_stl/bsg_misc/bsg_adder_ripple_carry.v external/basejump_stl/bsg_misc/bsg_arb_fixed.v external/basejump_stl/bsg_misc/bsg_array_concentrate_static.v external/basejump_stl/bsg_misc/bsg_circular_ptr.v external/basejump_stl/bsg_misc/bsg_concentrate_static.v external/basejump_stl/bsg_misc/bsg_counter_clear_up.v external/basejump_stl/bsg_misc/bsg_counter_set_down.v external/basejump_stl/bsg_misc/bsg_counter_up_down.v external/basejump_stl/bsg_misc/bsg_counter_up_down_variable.v external/basejump_stl/bsg_misc/bsg_crossbar_o_by_i.v external/basejump_stl/bsg_misc/bsg_cycle_counter.v external/basejump_stl/bsg_misc/bsg_decode.v external/basejump_stl/bsg_misc/bsg_decode_with_v.v external/basejump_stl/bsg_misc/bsg_dff.v external/basejump_stl/bsg_misc/bsg_dff_en_bypass.v external/basejump_stl/bsg_misc/bsg_dff_chain.v external/basejump_stl/bsg_misc/bsg_dff_en.v external/basejump_stl/bsg_misc/bsg_dff_reset.v external/basejump_stl/bsg_misc/bsg_dff_reset_en.v external/basejump_stl/bsg_misc/bsg_encode_one_hot.v external/basejump_stl/bsg_misc/bsg_lfsr.v external/basejump_stl/bsg_misc/bsg_lru_pseudo_tree_decode.v external/basejump_stl/bsg_misc/bsg_lru_pseudo_tree_encode.v external/basejump_stl/bsg_misc/bsg_mux.v external/basejump_stl/bsg_misc/bsg_mux_butterfly.v external/basejump_stl/bsg_misc/bsg_mux_one_hot.v external/basejump_stl/bsg_misc/bsg_mux_segmented.v external/basejump_stl/bsg_misc/bsg_priority_encode.v external/basejump_stl/bsg_misc/bsg_priority_encode_one_hot_out.v external/basejump_stl/bsg_misc/bsg_round_robin_arb.v external/basejump_stl/bsg_misc/bsg_scan.v external/basejump_stl/bsg_misc/bsg_swap.v external/basejump_stl/bsg_misc/bsg_thermometer_count.v external/basejump_stl/bsg_misc/bsg_transpose.v external/basejump_stl/bsg_misc/bsg_unconcentrate_static.v external/basejump_stl/bsg_noc/bsg_mesh_router.v external/basejump_stl/bsg_noc/bsg_mesh_router_buffered.v external/basejump_stl/bsg_noc/bsg_noc_repeater_node.v external/basejump_stl/bsg_noc/bsg_wormhole_concentrator.v external/basejump_stl/bsg_noc/bsg_wormhole_concentrator_in.v external/basejump_stl/bsg_noc/bsg_wormhole_concentrator_out.v external/basejump_stl/bsg_noc/bsg_wormhole_router.v external/basejump_stl/bsg_noc/bsg_wormhole_router_adapter.v external/basejump_stl/bsg_noc/bsg_wormhole_router_adapter_in.v external/basejump_stl/bsg_noc/bsg_wormhole_router_adapter_out.v external/basejump_stl/bsg_noc/bsg_wormhole_router_decoder_dor.v external/basejump_stl/bsg_noc/bsg_wormhole_router_input_control.v external/basejump_stl/bsg_noc/bsg_wormhole_router_output_control.v bp_common/src/v/bsg_fifo_1r1w_fence.v bp_common/src/v/bsg_fifo_1r1w_rolly.v bp_common/src/v/bp_tlb.v bp_common/src/v/bp_tlb_replacement.v bp_be/src/v/bp_be_top.v bp_be/src/v/bp_be_calculator/bp_be_bypass.v bp_be/src/v/bp_be_calculator/bp_be_calculator_top.v bp_be/src/v/bp_be_calculator/bp_be_instr_decoder.v bp_be/src/v/bp_be_calculator/bp_be_int_alu.v bp_be/src/v/bp_be_calculator/bp_be_pipe_fp.v bp_be/src/v/bp_be_calculator/bp_be_pipe_int.v bp_be/src/v/bp_be_calculator/bp_be_pipe_mem.v bp_be/src/v/bp_be_calculator/bp_be_pipe_mul.v bp_be/src/v/bp_be_calculator/bp_be_regfile.v bp_be/src/v/bp_be_checker/bp_be_checker_top.v bp_be/src/v/bp_be_checker/bp_be_detector.v bp_be/src/v/bp_be_checker/bp_be_director.v bp_be/src/v/bp_be_checker/bp_be_scheduler.v bp_be/src/v/bp_be_mem/bp_be_ptw.v bp_be/src/v/bp_be_mem/bp_be_csr.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache_lce_cmd.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache_lce.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache_lce_req.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache_wbuf.v bp_be/src/v/bp_be_mem/bp_be_dcache/bp_be_dcache_wbuf_queue.v bp_be/src/v/bp_be_mem/bp_be_mem_top.v bp_fe/src/v/bp_fe_bht.v bp_fe/src/v/bp_fe_btb.v bp_fe/src/v/bp_fe_lce_cmd.v bp_fe/src/v/bp_fe_icache.v bp_fe/src/v/bp_fe_instr_scan.v bp_fe/src/v/bp_fe_lce.v bp_fe/src/v/bp_fe_lce_req.v bp_fe/src/v/bp_fe_mem.v bp_fe/src/v/bp_fe_pc_gen.v bp_fe/src/v/bp_fe_top.v bp_me/src/v/cce/bp_cce.v bp_me/src/v/cce/bp_cce_alu.v bp_me/src/v/cce/bp_cce_dir.v bp_me/src/v/cce/bp_cce_dir_tag_checker.v bp_me/src/v/cce/bp_cce_dir_lru_extract.v bp_me/src/v/cce/bp_cce_gad.v bp_me/src/v/cce/bp_cce_inst_decode.v bp_me/src/v/cce/bp_cce_msg.v bp_me/src/v/cce/bp_cce_msg_cached.v bp_me/src/v/cce/bp_cce_msg_uncached.v bp_me/src/v/cce/bp_cce_pc.v bp_me/src/v/cce/bp_cce_pending.v bp_me/src/v/cce/bp_cce_reg.v bp_me/src/v/cce/bp_cce_top.v bp_me/src/v/wormhole/bp_me_cce_id_to_cord.v bp_me/src/v/wormhole/bp_me_cce_to_wormhole_link_client.v bp_me/src/v/wormhole/bp_me_cce_to_wormhole_link_master.v bp_me/src/v/wormhole/bp_me_lce_id_to_cord.v bp_me/src/v/wormhole/bp_me_wormhole_packet_encode_lce_cmd.v bp_me/src/v/wormhole/bp_me_wormhole_packet_encode_lce_req.v bp_me/src/v/wormhole/bp_me_wormhole_packet_encode_lce_resp.v bp_me/src/v/wormhole/bp_me_wormhole_packet_encode_mem_cmd.v bp_me/src/v/wormhole/bp_me_wormhole_packet_encode_mem_resp.v bp_top/src/v/bp_chip.v bp_top/src/v/bp_core.v bp_top/src/v/bp_core_complex.v bp_top/src/v/bp_mem_complex.v bp_top/src/v/bp_mmio_enclave.v bp_top/src/v/bp_mmio_node.v bp_top/src/v/bp_tile.v bp_top/src/v/bp_tile_node.v bp_common/src/v/bp_addr_map.v
