package me.koxrel.controller

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller("/rest/hello")
class HelloController {
    @Get
    fun getHello() = "Hello!"
}
