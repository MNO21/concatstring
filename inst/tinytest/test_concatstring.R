expect_equal(concat_strings("Hello", "World")$result, "Hello World")
expect_equal(concat_strings(c("Good", "Bad"), c("Morning", "Luck"))$result,
             c("Good Morning", "Bad Luck"))
expect_inherits(concat_strings("Hello", "World"), "concat_result")

res <- concat_strings("Hello", "World")
expect_inherits(print(res), "concat_result")
expect_inherits(summary(res), "concat_result")
expect_warning(plot(res), "Not enough data")
