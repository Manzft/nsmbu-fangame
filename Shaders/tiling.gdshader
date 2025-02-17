shader_type canvas_item;

void fragment(){
	vec2 newuv = UV;
	newuv.x += TIME*0.125;
	vec4 c = texture(TEXTURE, newuv);
	COLOR = c;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
