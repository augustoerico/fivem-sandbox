# Rules

## Land vehicle 

### Extensions

Extra attributes not present in the original game

- Condition
- Storage capacity (even destroyed vehicles can be used as storage)
- Fuel capacity
- Fuel consumption

### <parts>:

1. BODY
2. WHEELS_AND_TIRES
3. CHASSIS_AND_SUSPENSION
4. ENGINE
5. FUEL_TANK
6. WINDSHIELDS

### <part_condition>:

- ENGINE, CHASSIS_AND_SUSPENSION, BODY
```
    1. PERFECT: 1 to 0.95
    v
    2. GOOD: 0.95 to 0.75
    |   - cannot apply: <mod>
    |   - repair cost: low ($)
    v
    3. DAMAGED: 0.75 to 0.5
    |   - performance penalty
    |   - repair cost: medium ($$)
    v
    4. HEAVILY_DAMAGED: 0.5 to 0.1
    |   - heavy performance penalty
    |   - repair cost: high ($$$)
    |   - <part_condition> decreases over usage
    v
    5. DESTROYED: 0.1 to 0
```

- FUEL_TANK, WINDSHIELDS, WHEELS_AND_TIRES
```
    1. PERFECT: 1 to 0.7
    v
    2. DAMAGED: 0.7 to 0
    |   - cannot apply: <mod>
    |   - heavy performance penalty
    |   - repair cost: $
```