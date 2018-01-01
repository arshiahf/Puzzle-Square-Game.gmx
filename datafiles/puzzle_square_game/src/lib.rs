#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
}

mod prime
{
    pub fn choose_difficulty(difficulty:str) -> str
    {
        let hint:str = match difficulty
        {
            "beginner" => pattern_beginner(),
            "very_easy" => pattern_very_easy(),
            "easy" => pattern_easy(),
            "hard" => pattern_hard(),
            "very_hard" => pattern_very_hard(),
            "expert" => pattern_expert(),
            _ => pattern_normal(),
        }

        hint
    }
}
