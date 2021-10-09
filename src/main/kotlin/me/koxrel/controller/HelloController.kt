package me.koxrel.controller

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.micronaut.http.annotation.PathVariable

@Controller("/rest/hello")
class HelloController {
    @Get
    fun getHello() = "Hello!"

    @Get("/{name}")
    fun getHelloByName(@PathVariable name: String) = "Hello, ${name}!"
}
