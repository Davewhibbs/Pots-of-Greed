
// Decrease flash
flash -= 0.05;

// Set the shader
shader_set(shd_flash);


// Set Color values
shd_red = shader_get_uniform(shd_flash, "red");
shader_set_uniform_f(shd_red, red);

shd_green = shader_get_uniform(shd_flash, "green");
shader_set_uniform_f(shd_green, green);

shd_blue = shader_get_uniform(shd_flash, "blue");
shader_set_uniform_f(shd_blue, blue);

shd_alpha = shader_get_uniform(shd_flash, "alpha");
shader_set_uniform_f(shd_alpha, flash);

// Draw self
draw_self();

// Reset the shader
shader_reset();