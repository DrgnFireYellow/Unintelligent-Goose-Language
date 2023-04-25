module main

import rand
import os

fn honk(text string) {
        println(text + ' Honk!')
}

fn randomnumber() {
        println('3.1415 crumbs')
}

fn parser() {
        filecontents := os.read_lines(os.args[1]) or { panic('Invalid File') }
        for line in filecontents {
                if '+' in line.fields() {
                        println(rand.int())
                } else if '-' in line.fields() {
                        println(rand.int())
                } else if '*' in line.fields() {
                        println(rand.int())
                } else if '/' in line.fields() {
                        println(rand.int())
                } else if line.fields()[0] == "honk" {
					honk(line.fields()[1])
				} else if line.fields()[0] == "randomnumber" {
					randomnumber()
				}
        }
}

fn main() {
        parser()
}