CREATE TABLE [dbo].[Oracle_Orders_ori]
(
[master_schedule_id] [float] NOT NULL,
[active_flag] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[disable_reason] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[disable_date] [datetime] NULL,
[organization_code] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order_number] [bigint] NULL,
[order_status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order_type] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[conc_order_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_number] [bigint] NULL,
[current_shipment_number] [bigint] NULL,
[line_status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order_line_source_type] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[source] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[request_date] [datetime] NULL,
[promise_date] [datetime] NULL,
[need_by_date] [datetime] NULL,
[schedule_approved] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[usac_no_of_cuts] [float] NULL,
[usac_cut_length] [float] NULL,
[bom_route_alt] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[has_credit_hold] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[has_mfg_hold] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[has_export_hold] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[has_shipping_hold] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[scheduler] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order_uom] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order_quantity] [float] NULL,
[assembly_item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[assy_primary_uom] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[make_buy_flag] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pri_uom_order_qty] [float] NULL,
[component_item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[comp_primary_uom] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[operation_seq_num] [float] NULL,
[operation_code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[department_code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bom_level] [bigint] NULL,
[bom_op_sequence] [float] NULL,
[start_up_scrap] [float] NULL,
[qty_per] [float] NULL,
[bom_required_qty] [float] NULL,
[intended_job_qty] [float] NULL,
[minimum_cut_length] [float] NULL,
[send_to_aps] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[count_per_uom] [float] NULL,
[unit_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[layer_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[group_id] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[total_job_length] [float] NULL,
[fiber_planned] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[comp_product_class] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[child_dj_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[parent_dj_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[actual_job_qty] [float] NULL,
[machine_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[regrouping_allowed] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[creation_date] [datetime] NULL,
[last_update_date] [datetime] NULL,
[mfg_sched_refresh_date] [datetime] NULL,
[setup_start_date] [datetime] NULL,
[start_time_date] [datetime] NULL,
[end_time_date] [datetime] NULL,
[color] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tuber_fiber_count] [float] NULL,
[cable_fiber_count] [float] NULL,
[od] [float] NULL,
[promise_delta] [float] NULL,
[base_item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fiber_item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fiber_desc] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[nextres] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[seq] [float] NULL,
[to_machine] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[reel_size] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cuts] [float] NULL,
[lengths] [float] NULL,
[ship_date] [datetime] NULL,
[usac_customer] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[set_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[set_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[end_cable_fiber_count] [float] NULL,
[customer_name] [varchar] (360) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[schedule_ship_date] [datetime] NULL,
[transfer_to_aps] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[customer_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Oracle_Orders_ori] ADD CONSTRAINT [PK_Oracle_Orders_ori] PRIMARY KEY CLUSTERED  ([master_schedule_id]) ON [PRIMARY]
GO