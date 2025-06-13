res1 <- concat_strings("Hello", "World")
expect_s3_class(res1, "concat_result")
expect_equal(as.character(res1), "Hello World")

res2 <- concat_strings("Good", "Morning")
expect_s3_class(res2, "concat_result")
expect_equal(as.character(res2), "Good Morning")
