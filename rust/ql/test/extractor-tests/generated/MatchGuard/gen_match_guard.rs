// generated by codegen, do not edit

fn test_match_guard() -> () {
    // A guard condition in a match arm.
    // 
    // For example:
    match x {
        y if y > 0 => "positive",
    //    ^^^^^^^
        _ => "non-positive",
    }
}
