testthat::context('utils')

testthat::describe('find package in path',{
  testthat::skip_on_travis()
  file.copy("../assets/covrpage_benchmark/covrpage", tempdir(), recursive = TRUE)
  td <- file.path(tempdir(), "covrpage")
  
  it('benchmark',{
    
    testthat::expect_equal(
      'covrpage',
      package_name(td)
      )
  })
})