GDPC                                                                                 @   res://.import/bongocat.png-57b44ec11a010406b1d9584f8d93d42d.stex�W      iq      �VĨi�.p��d�;4] <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�G      �      �Q!����|M�   res://Game.tscn �      u      ���F�m��5{��O��   res://_src/AiPaddle.gd.remapP�      (       �-�sBG�r/Hb�   res://_src/AiPaddle.gdc @%      �       Y�F�K�񿇊:�8��{   res://_src/Ball.gd.remap��      $       Ba<P�'��ѥ�Wዪ   res://_src/Ball.gdc �%      �      /,QY��ǀ�AW4�s%   res://_src/Goal.gd.remap��      $       ��*�!6Oh��qāq@   res://_src/Goal.gdc �+      e      �>Ym�A�@iRʸѵ�$   res://_src/Player 1 Goal.gd.remap   ��      -       �s�D"EH��ש��1�   res://_src/Player 1 Goal.gdc .      �       ��Yl�B:�o,�T%    res://_src/PlayerPaddle.gd.remap�      ,        � o��+#X��   res://_src/PlayerPaddle.gdc  /      ,      G �*���!;�:v�_    res://_src/ScorePanel.gd.remap  @�      *       ���u�#Ir�zs2�{   res://_src/ScorePanel.gdc   04            }].Z� ~a��H,$K   res://_src/goalLeft.gd.remapp�      (       if������"�mf7V�   res://_src/goalLeft.gdc @6      �       an��$�,��ap<    res://_src/goalRight.gd.remap   ��      )       ���̕-��j���C���   res://_src/goalRight.gdc 7      �       '2���M��9O�QMSu    res://_src/leftScore.gd.remap   ��      )       ���Y~2��]HP)�   res://_src/leftScore.gdc�7      �       pԔ�Yϛ��t���    res://_src/rightScore.gd.remap   �      *       U�?�b��h�<�[�   res://_src/rightScore.gdc   �8      �       dj�'�����h�$    res://classes/PlayerPaddle.tscn �9      �      ��:U���Q��B-w��   res://default_env.tres  p=      
      �?�թ+Ev�/h�!b�   res://icon.png  0�      �      �~dg`!����I�҃   res://icon.png.import   `U      .      y/�f�\�>w�ۨJ	   res://project.binary��      }      �~L1P�)�*Qn���x$   res://sprites/bongocat.png.import    �      B      �<��� �$L���2\��            [gd_scene load_steps=14 format=2]

[ext_resource path="res://_src/leftScore.gd" type="Script" id=1]
[ext_resource path="res://_src/rightScore.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]
[ext_resource path="res://classes/PlayerPaddle.tscn" type="PackedScene" id=4]
[ext_resource path="res://_src/AiPaddle.gd" type="Script" id=5]
[ext_resource path="res://_src/Ball.gd" type="Script" id=6]
[ext_resource path="res://sprites/bongocat.png" type="Texture" id=7]
[ext_resource path="res://_src/goalLeft.gd" type="Script" id=8]
[ext_resource path="res://_src/goalRight.gd" type="Script" id=9]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 13, 13.3714 )

[sub_resource type="ShaderMaterial" id=2]

render_priority = 0

[sub_resource type="CircleShape2D" id=3]

custom_solver_bias = 0.0
radius = 10.0

[sub_resource type="RectangleShape2D" id=4]

custom_solver_bias = 0.0
extents = Vector2( 10, 10 )

[node name="Game" type="Node" index="0"]

[node name="P1 Score" type="LineEdit" parent="." index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 673.0
margin_top = 64.0
margin_right = 731.0
margin_bottom = 88.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 1
size_flags_horizontal = 1
size_flags_vertical = 1
text = "0"
align = 1
focus_mode = 2
context_menu_enabled = true
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
caret_position = 0
script = ExtResource( 1 )

[node name="P2 Score" type="LineEdit" parent="." index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 255.0
margin_top = 65.0
margin_right = 313.0
margin_bottom = 89.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
focus_mode = 2
mouse_filter = 0
mouse_default_cursor_shape = 1
size_flags_horizontal = 1
size_flags_vertical = 1
text = "0"
align = 1
focus_mode = 2
context_menu_enabled = true
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
caret_position = 0
script = ExtResource( 2 )

[node name="Zones" type="Node2D" parent="." index="2"]

position = Vector2( 352, -96 )

[node name="Walls" type="Node" parent="Zones" index="0"]

[node name="BOTTOM" type="StaticBody2D" parent="Zones/Walls" index="0"]

editor/display_folded = true
position = Vector2( 512, 576 )
scale = Vector2( 16, 1 )
input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Zones/Walls/BOTTOM" index="0"]

modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Visibility" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Zones/Walls/BOTTOM" index="1"]

position = Vector2( 2.38419e-006, -1.52588e-005 )
scale = Vector2( 2.46154, 2.46154 )
shape = SubResource( 1 )

[node name="TOP" type="StaticBody2D" parent="Zones/Walls" index="1"]

editor/display_folded = true
position = Vector2( 512, 0 )
scale = Vector2( 16, 1 )
input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Zones/Walls/TOP" index="0"]

modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Visibility" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Zones/Walls/TOP" index="1"]

position = Vector2( 2.38419e-006, -1.52588e-005 )
scale = Vector2( 2.46154, 2.46154 )
shape = SubResource( 1 )

[node name="RIGHT" type="StaticBody2D" parent="Zones/Walls" index="2"]

editor/display_folded = true
position = Vector2( 1024, 288 )
scale = Vector2( 1, 8.75 )
input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Zones/Walls/RIGHT" index="0"]

modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Visibility" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Zones/Walls/RIGHT" index="1"]

position = Vector2( 2.38419e-006, -1.52588e-005 )
scale = Vector2( 2.46154, 2.46154 )
shape = SubResource( 1 )

[node name="LEFT" type="StaticBody2D" parent="Zones/Walls" index="3"]

editor/display_folded = true
position = Vector2( 0, 288 )
scale = Vector2( 1, 8.75 )
input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Zones/Walls/LEFT" index="0"]

modulate = Color( 0, 0, 0, 1 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Transform", "Visibility" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Zones/Walls/LEFT" index="1"]

position = Vector2( 2.38419e-006, -1.52588e-005 )
scale = Vector2( 2.46154, 2.46154 )
shape = SubResource( 1 )

[node name="Player" parent="." index="3" instance=ExtResource( 4 )]

position = Vector2( 91.1753, 290.264 )

[node name="AI" parent="." index="4" instance=ExtResource( 4 )]

position = Vector2( 930.141, 301.94 )
rotation = 3.14159
scale = Vector2( -1, -1 )
script = ExtResource( 5 )

[node name="Ball" type="KinematicBody2D" parent="." index="5"]

editor/display_folded = true
modulate = Color( 0.175964, 0.484375, 0.253067, 1 )
self_modulate = Color( 0.139099, 0.207031, 0.159266, 1 )
material = SubResource( 2 )
position = Vector2( 544, 288 )
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
script = ExtResource( 6 )
_sections_unfolded = [ "Material", "Transform", "Visibility" ]
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Ball" index="0"]

self_modulate = Color( 0, 0.695313, 0.0760498, 1 )
scale = Vector2( 1.73077, 1.73077 )
shape = SubResource( 3 )
_sections_unfolded = [ "Transform", "Visibility" ]

[node name="Sprite" type="Sprite" parent="Ball" index="1"]

scale = Vector2( 0.1, 0.1 )
texture = ExtResource( 7 )
_sections_unfolded = [ "Transform" ]

[node name="Player 1 Goal" type="Area2D" parent="." index="6"]

editor/display_folded = true
position = Vector2( 32, 288 )
scale = Vector2( 0.5, 8 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 8 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player 1 Goal" index="0"]

position = Vector2( 0, -9.53674e-007 )
scale = Vector2( 1, 3.2 )
shape = SubResource( 4 )

[node name="Player 2 Goal" type="Area2D" parent="." index="7"]

editor/display_folded = true
position = Vector2( 992, 288 )
scale = Vector2( 0.5, 8 )
input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"
script = ExtResource( 9 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player 2 Goal" index="0"]

position = Vector2( 0, -9.53674e-007 )
scale = Vector2( 1, 3.2 )
shape = SubResource( 4 )


           GDSC                  �����϶�   �߶�      PlayerPaddle.gd                                5T3LMR�  �  �  T[             GDSC         0   #     ������������τ�   �������϶���   ������Ŷ   ����Ҷ��   ������Ŷ   �����϶�   �������ض���   �����¶�   ���������������Ŷ���   ����׶��   ����������϶   ϶��   ζ��   ����Ӷ��   ����ζ��   ����϶��   �������������ٶ�   ���������������Ӷ���   �����Ӷ�   �����ڶ�   ����������Ҷ   �������������¶�   �����Ӷ�   ��ڶ   ��ж                              P                                            
                              $   	   )   
   *      0      5      :      @      A      H      N      ^      e      j      v      {      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .      /   !  0   5TT=�  �  LMT=�  OT=�  �  OT=�  �  LMTT3�  LMR�  �  �  OTT3�  LMR�  �  �  O�  �  O�  �  �  LMTT3�  L�	  MR�  =�
  �  O�  &L�  P�  �  P�  MR�  =�  �   LM�  =�  �  �  &L�  LM�  MR�  �  �  �  =�  �  �  &L�  LM�  MR�  �  �  �  �  �  P�  �  �  �  �  �  �  P�  L�  �  M�  �  �  �  �  =�  �  L�  �	  M�  &�  R�  �  �  P�  L�  P�  M�  �  �  �  �  P�  �  L�  P�  M�  �  P�  �  L�  P�  M�  =�  �
  P�  L�  M�  �  L�  MT�  0�  T3�  L�  MR�  =�  �  �  &�  	R�  �  �  �  �  1�  �  L�  N�  M�  L�  N�  M�  �  T[    GDSC            U      ���ׄ�   ���Ӷ���   ���ڶ���   ���¶���   ������¶   ���������¶�   �������Ӷ���   ��������������Ҷ   ���϶���   ����������ڶ   �����¶�             body_entered      on_body_entered       Ball      left      goalLeft      right      	   goalRight                      	                              )   	   *   
   1      7      =      B      H      M      5TT=�  OT=�  OTT3�  LMR�  �  L�  NN�  M�  �  �  LMP�  L�  MOTT3�  L�  MR�  &�  �  R�  &�  �  R�  �	  L�  M�  '�  �  R�  �	  L�  M�  �  P�
  LMO[           GDSC                   ���ׄ�   �����϶�                                                    	      
                                       5TTTTTT3�  LMR�  �  �  0TTTTTT[            GDSC      
   ,   �      ������������τ�   �����ض�   ����򶶶   ��������򶶶   ������������   �߶�   ���������������Ŷ���   ����׶��   ���ƶ���   �����ض�   ζ��   �������ض���   ����¶��   ����������������Ҷ��   ϶��   �������������Ӷ�  d         �        
                                         E             ui_up         ui_down                    
                                 	       
   '      ,      1      2      9      :      @      I      O      T      Z      _      `      p      w      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   5TT=�  �  LMTT<�  T<�  �  T<�  �  T=�  �  TT3�  L�  MR�  =�  �  �  =�	  �  �  �  �  P�
  �  O�  �  &L�  MR�  =�  �  LM�  &�  	�  R�  �  �  O�  '�  �  R�  �	  �  O�  �  &�  L�  �  P�  L�  MMR�  �  P�  �  �  &�  P�  	�  R�  �  P�  �  �  �  '�	  L�  �  P�  L�	  MMR�  �  P�  �  �  &�  P�  �  R�  �  P�  �  �  �  '�  P�  �  R�  �  P�  �  �  &�  P�  	�  R�  �  P�  �  �  '�  P�  	�  R�  �  P�  �  �  &�  P�  �  R�  �  P�  �  �  �  �  �  L�  MO�  �  0[    GDSC            J      �������¶���   �������޶���   ��Ѷ   ���ڶ���   ����Ӷ��   ���¶���   ���������¶�   �������Ӷ���   ������¶   ������������Ӷ��   ���¶���                _update_score         Score against:                                    	                           	   $   
   /      0      6      >      B      5TT=�  T=�  T=�  T=�  OTT3�  LMR�  �  �  LMP�  L�  M�  �  P�  L�  NN�  MTT3�	  LMR�  �7  L�  �  MO�  �  �  �  �
  �6  L�  M[     GDSC                  �������¶���   �����϶�   ���Ӷ���   ���¶���      Goal.gd       left                               5TBOT3�  LMR�  �  �  �  P�  LM[        GDSC                  ��������¶��   �����϶�   ���Ӷ���   ���¶���      Goal.gd       right                                  5TBOT3�  LMR�  �  �  �  P�  LM[    GDSC                  �����϶�   �������޶���   ��Ѷ   ���¶���      ScorePanel.gd         Player 1 Goal         goalLeft                   	                  5TT3LMR�  �  �  �  �  �  �  P�  LM[         GDSC                  �����϶�   �������޶���   ��Ѷ   ���¶���      ScorePanel.gd         Player 2 Goal      	   goalRight                      	                  5TT3LMR�  �  �  �  �  �  �  P�  LM[     [gd_scene load_steps=4 format=2]

[ext_resource path="res://_src/PlayerPaddle.gd" type="Script" id=1]
[ext_resource path="res://sprites/bongocat.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 7.13295, 11.9034 )

[node name="Player" type="KinematicBody2D"]

position = Vector2( 116.118, 284.823 )
scale = Vector2( -1, 1 )
input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
script = ExtResource( 1 )
_sections_unfolded = [ "Transform", "collision" ]
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="." index="0"]

rotation = 1.22173
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 2 )
_sections_unfolded = [ "Offset", "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="1"]

position = Vector2( -1.90735e-006, -5.13309 )
scale = Vector2( 2.46154, 3.37571 )
shape = SubResource( 1 )


               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST�  �          Mq  PNG �PNG

   IHDR  �  �   �a^    IDATx���y�\e���߽�k�;�IH� !,�,H" �AQ�MԀ
ꈂ:�:��;��̸̦�3ʈ�(�ٷ�,	�Ⱦ��tW����VUW�BL���ߗO���[��VW�=u��$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I���'�����U��ϗ\���
�:c�$I��3�� ���e�����9I�$�,��(	Jc������ ����$I��O�D#�6Z���m���vW�$I�o��ഝ 5�fR�;q�%I�t�z'0�v�Ә�x� P��EU�$I�^q2������"@�Tu�!H�$�@1XB���=FF�2QfW��M���NI�$i�M"��A�t�A��?}������pԑGu�-��봣�$IR�v
��v�Ә8 �����_�zظqS�6�����á�-ˮ����Y%I����4҆�V���Յ;>wGX�v]hnʆ\s.455��������(8-\��I�&I��nf�2dNc�P]]>��O��o�٦l�6eC�KB�9�5��~���O�>e��v.�����$Iz���t�f�L���7~����7Ӭ鎦�d�r!�s!�M��e���W]2qfW������w��$I��&K� 8��Buuu�����ҥKCsSs���j�M��$̛;/�v�i!�����HW�щ�,I��.j
��(����	�\}MX�hqH�����Aj.����7a�cC&�hӂ*�����;tI�$u5�^e�immm��Cׇ��r�\Yp�ѥygsh����7�	�h3�O�|�?�:��$IR�qT���p��Eo�\s.4�l~��4�B�es���9�Y�&����CeEe�� h	Ro���A�$I�,����iDz��
3>:#,Y�$d�ri�~�P���$�秾�ʫ�s�Q�6@-	R�N���D�$I�h%sN)	P�iUUU���[�+BsSs1�ܝ���K�)r�\��C
��(��Au!pl�=,�$I���e�"8���	7~�ư|��>�o30--��6e��M�_~�/���NW�a��ׁ�:��$I��t
��v�����Ԅk��6,^�8�䭇�w'@M�i�M�6�/���P__��
U��H{�J�$� v�
��SJ2�������]��ZHro8Wj�V��2\w�u����M�V���N{�$I��_|�v����~EEE������!	!ۜݣ9�o�����gN����3eS(꿸�-I�$�31p%�NK3����PUQ��9=̞5;����YA�n�I�af8��c�+MEeu��f~%I�t�� �B����ie�2�~��ᙧ�)D��ߛ��M��;w���o��<���~"�$I: 6����8��;��3<��!����{3k�ѥ��9l޴9|�+_�u��
P��U�� J�$i�4�N�2"
�w|��w��ls�8�t��m.�o��f����Cee宖B����Q�$I�Ӂ�M�}l����CF����ga玝i3�|#���&��h�g�S&O	QGM�w_ġ~I��.-2@-���/�b+):N�����[�5��
Q{%H�/����~��!���8�;*�Z����Y�$Io�����:HK/q������>6n�X�d������kN3��7m��C����M��q� ���sI�$�28�tu�W�U�V�2���hb�!"�Eq��+BD&M��ϝr�%HC.����Ԥ9�\S.$I���bU�����|:�8��?�$IRO���~N:s'���U�4"
�?����;v��9��������i�p�{//�Fmg�?���\޵��,���D������Y�����D���@(~_z]�����Jss3��ꫮ�����WQ�m�z�!EI���/����p�lټ�����*���-����K�:d�*x& �F��a��eEQ����!����J�3��/����&�m�6����㩫�#I���EQ�x;	!�K�X��� �>�(q�$I�6����<�������sIR��V����0`\�i �:0-�y���]uU5�G�����SOc��Ɍ9|��z��(?PG��9m�(t�A|��d���_��,�n���>����n'�F�?�ϐ��M��}s�Գu����=Q	 >�C�k������E��TPS[��#�<y2'�|2�&Md��444PYQI.�#S�I��fx��(��,������w�����߳j�*ڎ��Z;S �����[�׭�`U��T�{:�4��e�i�
��#HHh=�4g�ݻ7C�a�	8�38餓}�hjjj��T��Q��ga�gWV@'IB��F~}�����-s�ͥ��)}�ZeTsnwط
X�0��N�is���HR�Ե�4�Z;����� �>u4l]:�r���1��;�)S�0e�F�E]]/�8&�%DQ�e
��T!�!v����s���̙3Y�t)[��O����x�]���j!X�-���{�$�g1@������ג���/Qu��=z4'N8�iӦqs�z7�-L�z���!@�_��ٺu+s���'�d֬ټ��u�|�M֭_�����ly�W�p���w䳮��{��%]�k�9BI:08g"��4�*p,0�p��(�HB�-��S�L�#�`ࠁ@!��QDG�
�U1#�?�\.˺u�Y�j5˖-c���y/^ĢE�X�lMMM� 7W���a���j��
�M�ƪ�N���.��=#I�W%P|8!�L#�|����`���x׻��y�ǉ'��СC���� I.@��U�'��$:K���l3[�la˖-,[��9s�0�|�͛��U+Y��
��YB�qLHZzĶ���A�u'�\��3i�*Ij�����.��pp0�*P�P�6�B�U]���:��s���1�q��ۇL�!ۜ%�ɔeH��Apִ=�P6t��t��8���Ď��^����-���'�|���-d�ƍ�ܹ�lh��V^���X\,!]nV�T�g���������Q�6ۙ�?5�5u�Q�w�y\z٥}��TUW�BIy�*����ǤuaT���$I�f��_��g�}�G}�g�~���/dժU455�ܦm?�]�ہ9���}UW�Ճ��n̳������B:��&�)m��q�qG͹�˥�]�q�GUUUK���8���*h!���$�d�^x�fΜɓO=��//`��u%�E�N��o��N����'{z<�t��&u�����hw�i>8��1c�p��p����O����$���q�~&P{���,��L&}�`{�v/^��O=�C=�3�<��^g���DD�Q\�P�5_5G�|x��}|x��ey���p���DҥI;.��#1���;��/���O8���r��8*i���"I��D@k׭e�<�ȣ�|h&�>�,�֯K��mp�Z�`ui��/�I�WI�<�I���?�C���~��ªFqӯ?�>����*&M�D�>}�`��9� �]����(b����Z��g�y����[~�a�/_Nss��,�x��nc��c/�$u)�դ�c�0�?Ӫ�i! )]�4!�����'N�k��s�a��AŪ�L&Sv����8����U.����u�歼�����������=__��͛��;Z���֒��?�_`�><<I�4�դ}�70�4�uiu~��<�$$TVV2~�x.��2.��2�2i@�e�L���_!I2���ym�Bx�A����y��f͚�v_�ʬ�
V�������z�,���x$i��&�;��7�[J��hbE�9�w_�n���
&L�@&�!�͕�`˨�0#�[�nK�.�G����=�?�8�-"	�nu]�Eoէ����?6���N�N�7�8�@�� ��`&�����s�嚫�a�;�ѻOoB�>���\�»�ի�3{�� =���ϧ�9���;�T�ϟV����j.�x���x�����y�ՠjW��d2N�p"�_=�.ÇO�$��
���8�߶m���:3g����c��٬߰�$�V�����~����g�_��#Ͱ6��P��π�ޑ�.Qz�(��l-�"��{/{/7�tcCeU%��\��i�ם��UxN��3i����M�[���}��?�ӟxm��l��H.�#W�$-��:Z��i +�m�K�GI�끝{��$i/0@���+H��U��0m PWW��SN�#7�ęg�I}}Q�R�o��	!@�>gr!ǎ�;xm�k<��<��C<;�Y֬Y�֭[�]Ohs�m����*�GҖU��ʁH�^�P��
|�|ִ��!s����\u�U�=����C�� e����t���|�*X�~�?�<O<��=�/.x��˖��e���]U��)�y�_V��f�����=��P�s��'m�@L��|��~.䨯����O禛n�w�AUuI.!�ɔA��Z�� DqD�9ǲeK�7o�=�O?�4/��"�ׯ'�˖-���qW��"�V����Y����QJR�<Jo_D��=0����0}�0j�(���z����s�a�ri�,���c_��Xi��^���,]����'�x�'�z��^z�6���bQ�[�wq�6[������=WߺJK��"ό��s����p(�GP��J�TW3u�T>uۧ�v�4�z���രm��[j-������ ��a�M�7�j�*�ϛϣ�=��=�/��Ν;�f�ز�JY�) �cϒm��s���_Z�J�>e�*���0�?�á����y������c���<�8�ӌi�����H��n�s(��%iq՚5k�5k3�8�'�|�E��u�V��޺�j��oY��tE��H�H�>c�*��Q���)@t|����d	̘1��/����ZB.���W�r~����ުQ��e��r�^��G}�ǟx�'�x��˖�~�z���v�h}}�`u� �X,�wG%�'�l)��a�C��a�����㢋.��|��ǎ�@�B_�
�jq�s~���;y��ט;w.O=�s���W_a��5� 4���Ҭm��)����ظ�JROd�*��/�r���3
W���+�?z��ù���W2t�P�$��K�U~ji�$$!I?,勬�m��o���Ysx���x��gX�`������v��t��������p$�<�=���I��/+\Q�92Q�@����3�<�[n���ӦR׫�$I̚��(�A�FQD�$lܴ�ů/�ɧ�d�̙<��Ӭ\��l6K�$IR��Nh�f���������L�R����������� }����+���[oe���i��v��I]Ii��@Zx���Ćy����x��y��Wؾ}{��D��Wm�n��.��(�R���<�J�z�n��?�ΚDQđc�d��f��+�π��6���3SRwR:g�8bǎ�,z}������{���|�oX�`ks?��m� W�RYL%�m�l*Ap�ihY
�4@���$$TUVq�i�r�gogڴiiT�m'u+��lH�W�vHr	+V���䗿�%��z�U+WWH���B�^�� �/��#�t �t�H����J>���������5W_�]w���I!��'��G��;�T���Q�UE1}���	'p�i�3���TUV�e�6o�\\���ԗVS bҥ������?��Ǖ�D`>�ܹ�#u=�QՓU �>Y���ސc�ˌ���W~����550Ձ��8@�)���7���,~�_p���bŊ��w�j�����#;�ݞwI���"�Ntip
��sH� XX&�yfUOU	|�i���I�����N;�O�Ӽ��wR]]���Y���#��vG�׬����?�)<� �6mj�Q-�}���	�i�0��dH�k���:�n.0���Kr�_=Q/���GIOe'�B�٧O>x���8i"����Ph���t ����,IH���e�c�6mGu47nd��Uds��vo�<��t��k@��ܨ�!=��-ݠPp��7��~�G�K�̪���K�a�v3�Qq���я|�>|$$����A�z�B�?�벥���/~����g�~>MMM�;��D�|��@�;
�j��*�y���W�#]���}��RwaU=I/Z��3�Y��@`�������������/.WZ������(�������IObҤId�o�|�͛7�۵��\�!��%�Z,���5 �����5i��~��U�Ζvdiǃ��p_�n� U=E�@���G
C��!���
��1��|�+\p�d2"�6�M�(갽�t�+�^
W���8f���2��1��f�/_�Φ��Q�����J�|�Lҡ�F`�~;�=s��}�W��I�[�:���Z`�^�K��2��b�\�(o���������>uGut�q��Ri��dǰ�%�{���G?f���i�6�r�i�B����Cw��L���#�?�4SZ����/�(�@qe�v�����e��2��]5��>p��կ_?n����~��z�œh�SI�/�"�����'��)����a�ҥl۶����������X������j�Z�����LZ������~�$!I�SJj�J[��ԇ����qH݊�du�Co�%�9�)�
ٚC���?�yf̘�� �8�0�����v""��)SO��c�e۶m�Z���;v���}y�7�4 � �"-��M���Q����e��À�oc^) �U�<�3�8�$IX�n-�r�%��0@� ��u�'-������9sQ1��q�u�]�w�y�qL&�!��3��7��Ҋ�5k����?��O�5k���n�B��?�f�� �}�� ���濯"�rGyĔgF��J\�G�f�ԩ�s�93�>����o��o�h��TT��; �5���>]��4SQUU������'?�ԩS�ę4s�V'F����s��$a�С�xӍ�zک���?�{�a�����d���Ɯ�爓�5�K�Fȭ^&�:���'�NPC��q�ci�?ef!k��PSSè��8�ē8�w0y��8�����ڸ����6������� U�
�k�Z�4�"�������� �~�V�>����b�`�}i_����`�#�<���sL?�~��s�Ͳe��m�A`Y X>o<Cڑ���_�JZT�v#x�Ѳ�h��Y���)l
r!Ǡ��8���6u�x�;8z��8�(r���&2��{2a�    IDAT�ns���2@Ձ"&͘�����!�����3n���8�./Z��*Q�����VH���L�6�q��y�Ϗ~�#��>�mO����6P��,&pi�y�4�|���Ԁ�2��ҿ%m�����f��0�B D��L�G���s���SO����aSSSCH!	�����d�$jkk�ęⴇv�I�:0T����ҹ�e�޽{�O�3fзO�b�����~V\*8	��ןs�=��?�鿙�?��?3w�\���b�ں����L��/ Ӂ� ~��_? �燎wGQR�Q��/|��PYQI�~�9���8���9���1r��{J�Pv�Ph���[n/K,�����q�'��"͊����m���-��B��^Ŧ�:W�ă:�k����S�������?�âŋؾ};q�P�u,�G�J�jҖr�&ͤސ���I����Oe�o���}�>��O;�s�9�I�'ѧo*3�D�.��5�.�Q�ܮYT������? ]%�X�O�������[��o �3�����ljD�G��_�\x!���~��������ٴ����N �N`Y��ܓ�:�������@�2d�Ə�Yg�Ż�xGy$���ŀ�p�����i�L&�vU�|�K�Uc��1@Uw����Œ��ɥP1ܿ_n�1N���b�HI]R!�B�ic��Ɍ7�.�������?��W^~��[7�7��E/��0z�u@��"�B�$$TUVq衇r��'s�gr��S>l8�L��6�Ю�t��S��EQ��K?TKja���f:���}WO8�eG�ŭ���5�\C��}H�I�'3I]G�[.�P׫�iӦq�'�����3g����ҋ/�h�" ]X���ls_%��Z+l��2�മ��#�<��gN笳��c�a���-C��`3S�)ˠ��xJw� 
sW%�0@Uw��H��@ZU���d�>�h>w�����sNs%I�B&���C���e�I8������K�5k3���=΂����D6�����B�2!!D����?�x.��"�<�L�>��������ᣤ���jI�߾tj@�6NA�Z��;	�p0�3D�ou���7���ɓ���l91��/uK�9��@ue5�F�b�!�9s��,[���sf��#��ȟa��ٱcG�}��B�4��пw&�0��.���ӧ�-��k�%9r�\:�OC�o�o�\.����6���;
�O�~���mp��P����w���w����!�8�?��J�^i1ULL}]=G�;��G����.e��e�ˏ���}�{�]��8�_*��_2x'O9�K�s	��~:���KW��t~i�|��3�δ�жm���PՕ�_�����B��K.������p�QG��l[�IA��Z/��@�TUTqؘ���ퟥ�����?`��l�Y��s�N;�4�8�&M�D�>�ӌj.i����y�(�Gq9�,�&TuE���.<� m�r�4sڧwn��&n��->�\6G�����I�_{��`�������1N�x3�8��_y���;:t(ǟp<'�tc�KuM5I.I�"��x�sJ����Bp���*��fʀ���P��%�mzf��krN&Cᖛo�Ə���IrIZ]f(��(���*�M���ɓٰa�\������#�b�$G���6Q{E����t��nT�-Tu%�����h�JLE��(�>l8����pŕW�PאfN�=NB�z�B���***2dHz}R�b&i�~�_�ǁᮂ���m�"%�3@UW1��ണ�sI��=�;３s�;���/aau�@�U��l���Ҿ�@��S销���;�l6K6�-����Ԗ���C��$8m�la 0�� Ny�)�zۭL�6�l��o�7��J{h�=��Z�Z]�n�V�'2@Ug�=pV�m�Z�QG1�$�a��'?�I.��rHi�nk��Ju�{B��Or	���$I҉{$u��LÁ�gC���J�����2��x��콗��3i1T�m����*M~)��>!K*WH��۷owH_���,C��ip�ɇ������L����>.��*++�շJ2�I���]9|(ui@���غu+�v���r���HW�:��4�����?�tŗ����̸y��� TTV��
�ҹl!�LL�K3ι\��4x�K�LxB�:E����,��lN�+/��Ǝ$�������	-�)�oH���{�sŕW��}�CF�R��{8P��;��m�h��H�F����E��^����Krf��NH�7ݾm;k׮��ݑ�T�O�� N/�Ԗ�M!��ാ�\�n��vFA����V�^�SO>�c�=�ٰqQѿ_F�ʹi�8i�I2��b��S��/�%�شi�W�n�s3�R[��_F�%]��,0M���\�e�Ѓ��C�s�70lذ�Z?ӳ���R�%C�O<��������GV�XQ,(+����O�ԩS��ƛ�6mZ��� UڿB��ʕ+Y�fM��6%���d)�Rh��H�/-V���n�q&D<�O��̸yC!�#2�P��v���{���w|��?�6oJVx,����n��/���9s4hGu��[�QRQ�$$��O�W������?Oԧ�o+;a�.�g����L�40�(	O�8C ����>|�z��{�:ՁP�����r�]w��sϵ��;���v*�߼����׾�#�>�M�Z�@ҾB���+��;:��U`�~�-�K3@վcI�I���La��(e2�B��C�_��^w-���BqT��&� _]�7��-^|��6�m���Bx���������}�K�Q�C㶭�x�ŗ�/2R�:vDS*�J�R �8
h���`��C���;��ꫨ��.[/ۚ�TG455q�=���3O���%H��ǟx�9s�@��l�������+W�x�b�D��1:�T*�B�������6�KމC�5�O~�V.�����3�=}H��te��˗����y�fb�=��}��7y�9��S��5�}����tM 0w�\�-_����/p\�ܯ;(uq��& �N�48-͞G�=�/|�..��b����Z 9?�\�ŋ�d�=�}��߾};�/f{�vz���������y���ָ�L&C.�k��B�|��P���'��?(�)��Əϧ?�\r��TVU�,�nظa#[�l���$$lݺ���&jkj�TI�F�jnK�.��'ۜ-[٭d$$����T�MG?��
y�LZ5�c��wp�Y�RQY�V���nn+� �d�<6���B`��-��̛;��o,(v�(	N`['�ԥ�jo�C���U r������9u�Yd21q&n��3�ע%x�;�I����R��(��=y̋���{Im��>v4���`Æ�} \|��RT�� ?�upJD&� �d9t�hn��-��wQ���J��R,��!IB�\�
�*�:t(���i��x��mN������_���W�ʳ�>KsssG���~?����fJ�	�}NǗ^GqZ�k��a���G?��GuMMY�.mBo�`WBUUUTT�����I�O�>�3��������)I��MBH[�8=@�P �m����+���Qp��hn�ROfU��$R�o���� �o�^E�~�!��u����L\G
A`�>}���ߣ�R��6�Q������0e�.��@��B�v�?s��P4"uw�+�-]����W�ᚁo./%�T��S���Cyp
��ְaø��7r�u�ѷ_?�b���@��:���:t(/��2���@ �cN�p"c�KHBY���v��cJ���X��B~�a֬YÈ#8���6|Xz?���BIh�?Rw�>�!B��O=��ٳw�Z��yXj�/��>������~cƌ��;��.�w}=!����J�̞u$���uĈL�<�'�z�lS��d����:j�(.��bz7�d�v�B�ZV�zn�s���w�ēO���DMu��z:����;�XB.��ȼ�խ
�B��68UwEQ~~6�[�����իW���/��`Y'������ԩ�{�(�
�E�U��~8w�}7���2����j� �ߦ�t�? B����ՎEDTUWѧO�Ν˒eK�D�/����������m����ￜL�.��^���u�?ƺ����W�����?lk�F�9K��F^y�^{�5&L����C�m�"�_���~2��"�C�m�����Q����w��wX�a}G���T�]fP�'�O:�4
!��Sb��0d�P>�������L��$���dQȏ�gQ��I��`�I��w��ٳg�e떖���ߙ8���s����*���
�����[��Jri�uѢE<7�b�qqZA��3g����?w;�u�i0���+�!�`ś+x�ٰ~�b�1�4xP��q�+u_I����ğ��/.�=m�9�7�Y���R�f����*�O�u�>�p�;�<*++	I �i��u�+_U%J3�Qq�9gs�a<p�����+466�}�vV�ZŦM��߯?���g�!#9��	L�4�#�8�8N��B��1.d87o�̶ƴx��d����W_eㆍ��jy*$I��r�q&&��s�>������裏�u�V�����3��O|��c��H�M���U�V����$��\���w<�C�z;��M:����[YQI.��Wm/�<�����cv�k=�kҬ]����7�q�f۶mdsY���Y�n[6o�������һwo�������պv��ȋ�t���j�*[ZR��L���|۰\6ײ���Tq�$I��B<���}��<��C���׮]�Kޠ���/�՗:t�n��ԥD��%�g�f��ym^3%�"R%u� U��x0 ��(*�@]]�]w7�p���F��vK�SB.ͦ644��LC`Ȑ!i ��{��C�e��?I!�I`���8x��D[��g����\x���/��B�U�,�l�͛7����y������a�}+d���Y���}���\|���?U�B����I���-[�t�y�tySI�`���Q|�(�
!зo_n��n��m8��5+��*�0�#�������*SQ���	�J�$�0��aL8��~�)���Z�+�G[�t	w�y��_��a�FCCCٔ��;w�a�V�Zͫ����U+ill,��J
�֮[�/����MMUMپ���*�n�$���,]���{�\~x��ާ3�o�����T��:�#�����~�зo_>~�Ǚq����Pl5E�ne���ٝ���.o��
u��������{Y�xQ��m"6���̇g��#�[�B 	I��j�,��i��Ē%Kh��HmumY_T�����n�~>/��rه�VAj3�a��ݸԩ��p��@e�BPQ[S��ﾈk���~���E8%C��6힢("�����S����M&�i��A��B:� �ͥ�\zIr�^��%��Q&4�b�l�2�5?���6RWQx��r9�͛G�F��k�{������R7d��]�>F�yRN�C�Æ���aÇ3d`���4 ����3>�Yg�E�_�M�G!KZ�/T&!!��sb�U7�V_G�o���o�����Jw{�A�����Y&�a˖-<���455�M�)y�,�f���M��#��������n! ����w�¸q�3q��7k��?h�牎=b,_��׹���v�3�_!��z^^�D�h�"�z�)v��Yl7UlFmo��cP;|h���/"X�r%o,~�8rPP�|8�N�-�$��Ԑ���a݈���J.����˻9rd�zx
��C���O� K�.�q{#IHZ��*b�/š�B��(����ؗ���l3k׮eʔ):���-]��l�_I&��t����՟'�@���7w?��Oټisq���F��YTIo� U�5��9��|QT�$��d����3�����裏�@1{�S!H�ۯ�<흜8�D""�5���C�QK���KEE���4�70��aL<i"W^qC��W_!�˖�R�j�*�/[�a�J����j���!�8S�}I�[x.�+k���ˀ~�31�<����o��*Z�
�l��;'uC5�T�%`��i���!{�i����}��Ǎ38�!
�L&������3�d���,X���^z�E��q�F��l��!J��Aġ���Q�8x >� �=���X�ߴ%H�es��w�e��E\r�%�r�)80]2��75�����M�6�~�z����ի#F�`�c��Л���]�ٻB�-��МmnY֗�����I�� U��_�(Tk�w���\�q�䓹�/�����t� �/��f�QD�$���3q�D&O�LsS3�l�݂�L&Cee%q&����O�8�iS��|�rr�\��<�l�خg萡0��ʊbo����wnڴ��[�P��`��!\p�|��a��Q����
�O#HB��[6kgi/0@�sN�̈��D�b�u!�2��q���ۙ8q���.���Ò$!		�L��a�|^hz��+GEqZx�@>�0g�^xᅖ%RK��cb��,K�-eɲ%��K���֯c���TUU���,�u�ek�����F/^��;�2����Q� z���������O|�3�8��ɺ'�+�����[�d2�3-��3�!&N�ȧn�C�-�g�*e��Q�V����y��� �]
�Z��q��~�ҥK�EZ��ں�K�Ǌ+�3w;�w�����j�}��#3���(�oq��B�PSS��ﻜK/�����t�5~��Kգ�I���3\���رs_��Y�| 1qy��V�Z��Y�Lj�mwl����;�+T��J�u��Z�%K��|������,�!�J~I����	\@��J!�U�|M�2�3�eLY���~iOEQDUeW_}5����'R]]�v�JZW��/͢�/�,Now��3t��n�����ж_���(J?,-yc	6lH?@���m�G�%@��vT�f̠�lG�/�*Q��6Iq��G}ء����<��'�"***�Td��=�p��������߲x�bv�����
�SʆO��+8vܱ\{��4�l���#"$�\���h�:[זmβd��l�R,.M�MF�(��=�{�S�m�I���~�t�uƻҟD-/��T��{�|�K_�/���#�f�b�o�y��o�NSSSq?���������ӿ���á�����gڴiTVTv�y����B(&Fd����|QZO.N��n�ع�+V��i'11	I���9(u5�=���%��,��6��\����Wu���8!	����駟Δ)SX�z5kV�a�ƍlݶ��i����TUUѫW/����׿�����ӛ����v����7�@.�#�d���͛7�p�BV,_A.�cРA�=r,}��M���ݺl�J:�y��̀�2��� �g�I������&M��	'�@�M���i�}�u��I.�����G0��Q�l6K�"Ӳm�}Q�8-���b�.���BX�l?�0���=g6k׮%		u�uL�<��|�#L�8	��8��X(���G]��S��;�v�j�;����nI#���X��Lˆ�U�5�5�}��<�l���p�W�V�6���?�d2iPVb�GQD�M�����\��ԃ֮Y˯�k��������u��t5���XĂ��7��i�����{����A�+w����Z��%K�z��_ ���Iݜj�[_��3�B�G��	�Td��഻��S�V��<�B�ę��g��JW�_K���o}�[�◿`ӦM-[�	I`���|�{�稣�bȐ!�.��1��y̅� ]���'�d���kٮd�?�_wP: ��<�����=�'	Gu;�e-�Vð�����[w{.�Ή-Z��ۻ�8������s��w�z�Zkk�M�el�`�`L��8�l�H sY�a!��8d2	!��|����e�̽��ń�e[6��Y^%��,�ڬ���9��SU]U�-ɲ����}�i�������O?����<\w�u������Q��Zsk�Z��~�ui�^�q>˞���8{�{�n~��s��A� )p6@�^���ӭ�sJ�������^���7���~���Ƨ�v�����￶�b    IDAT���t�MD��4f��#n�)���ر�60�?@�C�LԱR�w�]w�z�j��a^�G{|��� u�	)��+�������u�]�W^A6�58�N�R��8���S����1����5L������c׮]�?V��@,����I�� xv��|��_c�Ν� ��Ԃ����X���K��K-���		!!�M�������ox=5�5c7Bi�J�t��C���[سwOz�	��W�����|e��Bnn�ӛμ�����s���!`�ǰ{�tJ�A�\B�7 ���}�����>�z�U���$��)�"M$A��s���c�E��D��$N*h��8�y��8|d������0ZC�&gP'��˗��,��"f͚Y��B��A����8p���'N�枖o����*<���g����̈́�n��R�)qu+P�LHww7��vFf��Kz��x�	���{ʷ���8���r�ˊv����J��E��V���Fg`��c�:I��A����ۊ}��$�`.k���N�H�.ϯ�-{��}ѹ��Bk���G��Q��)o\���p��^��+Gih҄b�:	A@�C.�y�Ŏ1G�e͚5<�����8lB�n~I���wg���Z������g׮]���r��!a�rP���A8| �^�t�0�������!��^�ҍ�/�1J�9���I�K�*�*�5�7����0]�FsHe-9�8"� $���gx!0�d3i�JrRϻ�&�jr5������8�?V�89���x����L8�{V&l�3/HV�\ɪW�����T�.wNqK'� U�O-�8�����+��3��t��q���2���c�������j���i�Z�:s2�	c����K��L.ù/9��S���莑6�+Bjkk�3g�u�A8X{������̋��i���]����c�s�Ҫ(e�g���%`?��1�tֱ���>���2���⵬\�r\�.�)l�:Z��$I�*�>�ְǎc��u������͏m&�����J6�-�@R�x��a��:=� `j�T֯_�Ï<LH:�on`h��BJN �,�}�{��{K��c' ����C�q���3000�Uk���Jg1��eH�
��f���q��8y*c�v�3PCf���\���0�d2DQ��m[��w��_}����w��/�Kn��6~��_s��A�M�F[[[��_&!��-!�p�b(��jnnf��y<��<��S����.RA!h-����J[k��r��"����FI�7�����֭[y������Qk�W� Fw���ǏړK�1 �
����_[W�?��?�w����DR<���O�>N�4���h�֭<����ٽ�-[��z�jn_};;w�0
�3�e*��_�%�\Bo_/s��e��t��(m�*�GQL&y��D|M&��hB½��Ƿ��M�Zs�<�������C$���� hmie鲥��Mo濾����0d���F��������G?�/���\��w��TI�a�$W��8^vƟ1A��x0�+nn(� ��=�C>��?���o��ǟx��G�r��!<@ǄAYn,�����_��;ﺓ�)M���2�|u-����+V���KKK�l�0�܉G�]ճ[)hI���ϧ����۶�}�6���˾}�8|�p��u�u����|�r�͟GmM-I���#AG1˖-�ӟ�4��{�vg��R�OH�RG�	�&;��M.CfPjjk�җ�Ļ���	;��1a6�	-}	��f>J7��i)�#G��s�Nz�!~�����_��'�|��G����%��� H��$I����,5�54�70�c]]]�众�b�
�Ν��9���<����R@R� QVV��2@1�|N�W��kYx�q�n����Lk�$\�	I"7ЍW�4�8������'��<��!���N�|g�+��A���;6!fPG��$IiF2�c��,qs��Q�9�ؿo?�v�bӦMlظ�ukױy�f:H�+fH+�{��-a00-�9�����y:Į�v��M��[�f�̘1���>:�v����9�Ü9shko�yj3�u�d3�476��f\�$)�!���3�W)�$*�' d��`p:��j�&��{�ǓO<�����CZږ}�m V�A�qJR�I.��޽{� �,�6W�p����q��d
�j�^�{��s�N�q֯[��͛y�'y��g9x� �v����å�2�ɒ���CfQ�w^g��W b���(�x�'yꩧH��l&�����������a޼y���0�s.ӦMc�ԩ��զ��T�ږ��،O.�O<5����w���s�7n<^��ǀ���褳��$T�o�$	��<��{������1݋�.�&��р0������}��� w��n�l����<ͳ۟�XZ0�8�Q*�S8�Ѱ���N�W��!��|�>�EQ����ٶ}k׭#C��j�1c�g�f���A����Y�p4Om�eM[`�P[dV��<?���a�)�d̘1���Y�a=��_�RUJ���M��1�4ny��\�u@ou�����_��K/�4���o.j��u�la��\�(b��}<��c�y�ܽ�n6=���[��o߾�?��0�z���L\��>
�(��G����|V�8E�����@�4�̄��kUܦ�����Z[[�3{]]],�Z��3{�;����Jk{;�\���Pj�i�*��4�(���׿�5���}{���W�^�Kˀ��b��x6>#�)!��O��b�!�l����-\{ݵt��$���6r�������$IJ��a&-`�#��ٽk76n���p�w�a�v��ɡ��Җ����壆��� p�����&R�2ě|XR8_O�svRB�R�բ�W��]��'i"c6�������ziiia�ܹ�X��ŋ�`����iik!��Q��)�C�A��M�x��c�tb���l}�}���|��,��11p'�&`��T���3��6�峨		������\^���q�UW�p�B2af���z�DN5�)��b9�L.�@� �?�<�n�u��q�}��a�6m�Ğ}{���'���L�pKl���U��1��/ � w�}�p�k$S�\��kI��@�V��pzi���"�%�a��q-�e��o-6(\�!�l����6Oe���,Y��+Vp���3{�l�42e����K�s)�/6*(�Zt��~�6z�FK>�gn���|���'�8ޱ��kF{��xf�:�������Ek/^���x�����W\NKK�`�W^�\R��Vo�9��mE�Q����Ï<�ڵk��;�������O��#���?�����<t��`i���
��9�����gS�/���/����w+���Bz��߮T<�P�*	
AkR������3gе��s�9'�e]����f2e������Hb��3�ͰW7J�&�!@طo�����_c```� ���}�9^i<3@��VwCe�Zގ1NbfϚ��������̞3�(�����hqSN���X��V.�-ߑ�G����������Ζ-[8x��� �zVt��c3ps����#]�[	���|+��8\��T�����p�Y�h,`֬Y����x�bf�L7f���S��)��|��R�d ��(H�I��q���}5W��j~��T���
��e,�*�G�՘�:��"-]2\��������&�����򜕴�����?��6�%��>��P����d�ƍ��O���������f�K�ٹ��tIſe"��.�M
�9� �N�v+n��gHS5J��S�u-����&���ioogтE����b�
V�Zży��f��t�H�R�4I�V�����g��,_��/���2U���H�%a�:����4�1(51qE.c.�c^�<z{zY�|9˖-������6fΜISS���i`��R���\�)HMH��cǎ����ٽ��۶�q�F֭]����y�'9|�0�0��8-�w]]"���<T��F�n!�A��'v�"M �
���{!PCS�K^��	,�������NwW7�s+�YAww7]����� W�+ͨ���H2����-MP��E��~�~�լ[�n�j!;�O 7��x��ƿ��T`:�n�sHgV�� ��tmm-���������Hss33f̠������R���G�\�(���]L�~�<ǎ��w�^v����ݻٷ?�K~�ȑ��Qa�0�G�!�5\��2�YҫI�I����n��B��,%}=��+g[!�A��#9���Ƕ���j���gʔ),\��%K��|�r�.[J��N�O�NCc�L�L&��fIZ����Q�P�*b��&��{����(�����;����d```�u��_>�J�� -��IZ:i��X��,̵�I��:*�L-ߔS}�g�ނ��O#���`�}�#��� H?@�g:���	�����ׁie�-��N�C[�/�5ô �Re��L���Vf͞Ŋ�+X�|=�=,\���ә2e
���wkϖ�㡤�t:EQD��-W_}5����b�Jǲc�y�?��J���-'���
膑���֪rCř���'R�uM���C�8��[#̐>�-;�	����d���~�8�p��͑oxr���Xŀ����d2�LMk�v�t��D����9s&ӦO��>-mU
T����J[U7h��&�(��cG����5�?���@�*P��ؗIs��.�Iͣ��s�`Q�!�NnsȲ��H�א8���~��.�~�=�OE����,�a�fW�7�=��LzY
A���yJ3��:Y�x	�������x�b�ϟO[[S����b�ꀵ|�u��bC�S]�GE�8�$��;��}�{lz���\�qt���4^�j$�I��?ܐ3����e��/:�m˿�5�V�B�7u���2�z�x}����N*`e��V -S[�9k&�gΦ����+����ˢE��={v:� ������h��E�s'�����k�(�qs��!>w���җ����+�����ͤ�����P�qã�N�<ҎHo�W��i��S-mT%�2W�y҃����י5�_v�\�,EMTCNv�|�\�l&KSS�S��7w.d鲥,_������ƫL6�,�ĕAhyZ@y��6cM�|�l6{�+jL���_��|��>ȣ�>Z�M\5�z�t��ǹ[iB�XGk�I@K�e�מ�Ǻ�H���t׽�V���Y�����6(y�i�y���`�l��������`��%�w�y����Օ��jjn����L�!�G�M{��A��=�ju��$IP�"��o��}|�O>ο~�_�͂	P`�[��<�I��>Zk��jn�f1��W�W-�ǐ�S������X���e��m-�	�
��a�	34642g�������cŊtuu1k�,Z�Zill$�ͦ뢸, J�gQ�Z^O��4��O��"�U�("̄�r�-|�C�����~�
�v�:�kFy�Ҹ�QMҙ0�$�ǘ73t�l�0�m�kmmeƌ,\����n�,YBoo/��̦�����v2��}*��<m!̄Dq��͛y����������3g�M���`g��kJ¾}����>̷������9�����Jcm|�%M4ofN��tֈ���[��kX�~���S���`��٥&]]]tww�p�B�����$���2+0�Ak!�e|عs'�����я~�SO?E.����
>�л�� )kݦq/�c�L�w��>����î* O�����SS�$�������SH��+d�p�t��6��7�(�N��0ihh�����3g�h�"�-[ƊsV���ǬY�hnn&̄i�-��|5$X-�=S���O�4�޼y3�����Û��}�����G>Ƨ��uuuib�G��F���ٳ����=���?.��Ee��x7s7҄��L�X[L��
�٢ז}��a�^���Z]M�:����gJ�Z[[���c�9+X�x1}}},X��ƦFr��L.�}�ID1����m-oNC�D��k�^{-��v[�=fy ~�ŗp�72�sN���I��	�����?��C��^'}��!�4��Q�4�<�IO����>]8˪o�b�@$$d�L����1���n���Y�r%˖.c��ٴ�����@.��lBP5�:R�x��J����(◷���\{-w߳�4�[zbb���Jn�ƍL�:uBT)�L��Q�n��;~�����OE�	��`��s�ړ&<�f�Ƴ�t����K�%� VRY�u�2��rY�]��0S�TV\֯��cڴi,X���˗��o1=�=̛?�i��hnn�����GqEC�����Z���I��_��?��?���K�Ѥru7!a��9\�������}2Af�6#�Ȣ8"���O_�'>s�g8v�ذ�5�������0�1��L���
�������W)`-W�V�i-O�es��ǜ�s�?o^�R�������ej5���a:V>�Y�/@��;︓O~򓬾suE+����$�����~�c��moaʔ)/jYc��X"X�v-W������nie��׀?���J�Σ������R@�VC�$:m��Р�:�������V�wL������n������s^'3g̤���8�����Ҳ|q��#�<�G>�~�_�A�0;�V]��k>}����PS���9��.�@���\�߯�_��@t�����Q�4F<�I��^�`>��_��ꪯ|�k�5e��q��uuu455�����y�Y�t)}��Xܷ�ŋ���J6�-�Q�
��ٳ��\�n���y�8*�+&��������|�S��%罄0�g�ui,���P1"�_��W�����G��Txi�=��j��&i2�
�N����.hTuD;��Հ�iA\����QW[G�f-ZDOo+��`��%̟7���ƫ\�$N�����װk׮����2\yŕ����-[6tӔ��Y+���{�s|�O?�7���!��ڟn.��'ib�&i2jb���9ࢲ��-|���o�U1���P�8[Z__Ogg'���%K�������_Ϛ{֔��J���W��U����-K�,��Ҭ��n���8N��}�[����qv��1R����"�ͯI� U�*�����p���zՕ�Y�B��ڋA@��1���4 mkm�����;w200P�Y-n�Z�r%_��W���J�������>�(x���?o�X�/P�����5�eO|I���#�[
_��~���� KKݪ�v[�L�$�`���ݻ�˪�Ig`/��Bz{{�@&Nkg��?1�^�$}�,X���.���﹛�^o��Dp�o�j�3@����G��� N/�)��
�AjEi�aJ]�ϒ��0�@{&�p����K_ImmmZk5�]ޟ`����r9^�ۯ�����4�M���I�#�$��������_n V��+|�s���-LH��3�|>{�g��w_Kmm]E.�&�bpZ|L�:�7=���l�+�B��泥5Fi,8�*I��pO��ˀ\���WN�S�xu��Ea��K_ɥ��4He����kl����^�$I���\y�Q*9U__ϕW^�M?���{�p��Y�z�<���ׄe�*I�Gu��g�5�ӽ��2��JH����U)A@gg'W��
��ۈ"뜎WAտ�uK������H�1��\�]y.��z+08�Z�^y��?q?�4~�V$IgF�4��(i���^]����.,�'$����7��K.��$J�5��|�t���T]6�m�0�y���e�]F.�)�=νH��$��w�  RT�F&���߹���{5�-��NǏ�	LOt����r9^��0gΜR	���*������҄b�*I����$I7H岹t	7��^w����twuE.�+/4(��'{� `ѢE���v]�y��/bDҸf�*I�������5 �.X�5�|��K��G��r455�W�6S��T�(�C)��ʍy҄a�*I�翑Π�^��|?��ͼ��d����"����� u�
3!+_r.˖-;���x�(IU��4zꁚ��}HK������x9�L���1ʒR�7o���㵸md�Z�Y�4�<(  �IDAT U�FOC�K-Z�����R����}gPǑ1���⋙;g�e�2oZFqXҨ0@��16�}�����.�:V����H��K��$���R~�c<UKH^��a���t-�:އ���j�1@��1EP��,�)I��E}�.����o&a�%�^Bgg�HW�n$�G�&TI�$!�d�;�f�uA�����I<��,p¿�������
\�7�s�=�0v00gP5�d�z �4Yw��qI��I��0 ̤�ۑ�Gػw/����x� ��@E��47���Dcc#mmm455$e��|)ʗ��`����S[�r�k���nc�޽�]%&]�&TI#�@+剣�t��REi�T<7�:�@;w��g�a�c�ٰq#�<�;v�������T<�a���Hss3�m����r�𲗽��������3�/�nJ.��ZZZF
P����G,;�	� U��Xd��8���;��� �ˍ��0,��.�':x�={��q��}��lX��-�o��ϲw�^�;Zqwa��d��(��A�y�a����O���K_�R>���q�E��28���`�������?}�����oO��4@�&TIc��(g'�$I*�܁���|>ͷ�QD��~�m�Ɩ-[x��G����y�'ؼy3��y�#G���;  &q4J"����	aDl߾�[~r�^z)^x!�lvp�'�(5��,�{����׾:\�
Џ���@P%i�%IB���$�9�����0d�ؿ?O?�46l���'���G��g��СC�?VJ�(nj�J��'$���""�$*嚖r����Wi��<ϕd\�.���#m��#�,�m�F$�9��4�J��01�DhwZ��=�c� �2a�$Hؿ?O>�$w�y��z+�7�����r��4}�ޮ����q+��]#uZ
H��˃������r��a��2I�~x(��+�S���>�}����s��0����TI�՞�{8r�-S[J�N��:(:]��i�;�� ���<��S�[���n��5k���Cr����ϝ����C�8k��-�CE��b�8.+uq��c������yn�s\p��<w%�ڧ��Ғ�c����+.����L�>T
��K:#P%i�U��m۶����3s��t���`�8s�!a&���Cl۾��z�;︓���Ń>ȳ;�g43a�(���hgO� ,�����kkk�d2�p,>F@@&�T̾V߮4�8��{���{�ftuu���K__]�]����x�b2��(?����Z.z�E|����<�4�P%i�D@���0�=��ì�k��ݐ@6��( 6).�GQT��~����s�=��?c�ڵl~|3�v����#i�Y6�������ճ���H*�D>��Q>[�Ε���K�$��`�@5 `�֭<��n_};���T��9g�9\�;�s��/b欙�r��兞Va�9������;��4z��\QȊ���?|���9���|6��6���$!,T%���}{��z�j����z�jv��Q*�	2��������7�:/��p��������\��ƪ���5hkk�����K�r���[��[t̘A]]-����
 g�ڵ�X�����p��6�3���(�G>I�x��*g������+y�������̚5+��G��!������'�G�?ƾ=�x��'ذa#��z+w�s7;v� ���%������D7 �h�������a��!-\��E�ӭ����"M���>θ����:jjjh���KW��K_y)˗-���������ihh�>^�6p���300l�(TM���'I��G�Om�|�L���V^u٫x׻���_Lmm-I<z������'Mˁ���;v�`���<���<��3<��9v�����6����m�6�Q>���{F
 7��a0�ya�>C�Ν�Y�����F�-����w�̙5�����/[NWw�f�bڴiL�>��ө��A�]�q�F�;�<TMx��4�~M0��/2�I�����|���o;ӦO������RK�^L��㕳
������X�nk׮��5w���ر�p�СR�g����6(��2 <�3�������~���S���38�zFLi�����Y�`.d�,Z���2�|��L=��9A��M��s��X1@����F�-�\�(�hok�����Y�|���n�@emO�T�酦���*�o�	K3����-�o�;�b����w�}<�ԓ:tHsI�$��9��)��+�]���M/h��r����K�O����Y3g1g�f͚Ō3���a钥�-��ں�!�;A���p��4P%il��h.-�����vXZ�x	���2V���E1g��N�J.�#���J% ?�AE�$!�ͤiQ>"I�?�<�oy�6=�����w���O=�޽{ӱ�`P[�9-ve��p�t��?��l���x�4P��&�i�2���u��O�ƆFZ�Zimm�ej=�=�\��sV�C_o-m-<��C\x�#m��4��3�{l�h3@�����_$���i�Z��̆�4؋j�jhjlbZ�4������`ƌ̜9���&�����XE���Q&�ݙ2�t7��س{۟�γ۟e��[عs'G�����\.�Fe�Y�t_̧&s/����V���O�3y��j����p��q&4��P__O}}=���̚9���n����W�������x��d�*Ic'$ݬ�^�e��\��e��E��$.u�
��#SZ?C&Oi#UBBE�QL>Γă-I�@7I(]VR8Y�{Z0 �M��p�e��f5���#��Q|RVC��O�L&C���>��& TIB�%�?�b>gE��eeAh�LZ�&��"ՠ83��\
���n�����g�kI��'�� ]��KH?t�����(?�t��J���%.J��ɗ���7&�'N��l�*��qv���p�q�;����rS f:Ïy;����3�8�$i��n -����w? (}e�̐�0+��B�B���x?Az9����x~��4��ɫ#}m�P�Z��k1�<�د��H:S�A����G���5`v��z�v�RR/fy�\YZA�`��c�{�m���O���ܺ�z�*���� 8�¨�{i�~�e�*I�_;��?����p���S��	�s�w2�!m�
i��I�;@ZE����:��J��%���9��t�Y����ջIK���=�mP%I�4��_*|=��Է���$I�4��.i�j?����tD�i��$Ig� ������c7I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��3�������B    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bongocat.png-57b44ec11a010406b1d9584f8d93d42d.stex"

[deps]

source_file="res://sprites/bongocat.png"
dest_files=[ "res://.import/bongocat.png-57b44ec11a010406b1d9584f8d93d42d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://_src/AiPaddle.gdc"
        [remap]

path="res://_src/Ball.gdc"
            [remap]

path="res://_src/Goal.gdc"
            [remap]

path="res://_src/Player 1 Goal.gdc"
   [remap]

path="res://_src/PlayerPaddle.gdc"
    [remap]

path="res://_src/ScorePanel.gdc"
      [remap]

path="res://_src/goalLeft.gdc"
        [remap]

path="res://_src/goalRight.gdc"
       [remap]

path="res://_src/leftScore.gdc"
       [remap]

path="res://_src/rightScore.gdc"
      �PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name         PongCauseTheyMadeMe    application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     display/window/size/resizable          7   rendering/quality/intended_usage/framebuffer_allocation             )   rendering/environment/default_environment          res://default_env.tres     GDPC