return {
  init_options = {
    settings = {
      lint = {
        select = { "F", "E", "W", "PL", "I" },
        ignore = {
          "E501", "E741", "F402", "F823", "PLR0913", "PLR0911",
          "PLR0912", "PLR0915", "PLW2901", "PLW0603"
        },
      },
    }
  }
}
