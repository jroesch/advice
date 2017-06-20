meta def advice_action : list pexpr → tactic (list (string × string)) := fun ps, tactic.trace_state >> pure []

@[hole_command]
meta def advice_type_cmd : hole_command :=
{ name   := "Advice",
  descr  := "Provide advice about how to procede with the current goal",
  action := advice_action
}
