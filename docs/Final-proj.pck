GDPC                                                                            #   @   res://.import/escher.jpg-e27c006f6ec8234bad4101f954fb87e1.stex  �      �q     Z"�?��c�
����<   res://.import/icon.png-9231701f98a42a3463780adf42d0c830.stex�C     �      &�y���ڞu;>��.p    res://LevelDrafts/Qbert45.tscn  �	      �      4C��֠�����W�(   res://LevelDrafts/Qbertcomposition6.tscn�      N      �[NRr�.�{���V�(   res://LevelDrafts/Qbertcomposition7.tscn       	      ̎h�Q�R��Pt�����   res://Main.tscn       �      r��Mji�g��0��'    res://PlaceholderMeshLib.tres   �%      �      A�6�h9�ŷ��GR�   res://Player/Player.gd.remap`L     (       HŊ�C�@p;P*/��   res://Player/Player.gdc �+      [      q�RЙ����3���   res://Player/Player.tscn00            *L �=��j�ID$   res://Player/snapMovement.gd.remap  �L     .       �0 �@Ȣ��DX��ލ    res://Player/snapMovement.gdc   @3      ;      4޺���aM� ~\ZW�(   res://QbertGridMap.gd.remap �L     '       6Q��x>��*b�
	-   res://QbertGridMap.gdc  �5      �	      �L�����Lȵ�?�&   res://QbertLevel.tscn   ?      �      {�����ܭ�a����(   res://buildingBlocksPlain/3rowBlock.tscn�S      G      o����[�13yQa$   res://buildingBlocksPlain/Block.tscn@W      s      K ��>H@;�CDw$   res://buildingBlocksPlain/Stair.tscn�Y      -      �ˈ�z{T�����\l#(   res://buildingBlocksPlain/TallStair.tscn�a      �      "�����]�q�6
���(   res://buildingBlocksPlain/triBlock.tscn �h      �      J���e'�J,���s�   res://default_env.tres  �k      �       um�`�N��<*ỳ�8$   res://facesScenes/cubefaces.gd.remap�L     0       J�~�tA��7�H    res://facesScenes/cubefaces.gdc @l            ����Z�:�6���     res://facesScenes/cubefaces.tscnPm      �      ���q��+C���6,.�$   res://facesScenes/stairfaces.tscn   @u      �      ���e����Ǭ8�ʧ$   res://facesScenes/stairfaces2.tscn   �      �      6Q��ڡ����}��7�$   res://facesScenes/stairfaces3.tscn   �            �Vt�rﯘ(dFU��f4$   res://facesScenes/stairfaces4.tscn   �      �      �N\?�{���`t*[�   res://flatqbert6.gd.remap    M     %       \e� ��i#�웋   res://flatqbert6.gdc �      ~      �����vP�2�罨�   res://flatqbert6.tscn   ��      n      �tD&
�"�� ����   res://pics/escher.jpg.import�@     �      v,�.������F<�   res://pics/icon.png PM     �      G1?��z�c��vN��   res://pics/icon.png.import  �I     �      X>�Ȕ���l�"9��Y�   res://project.binary@Z     3      5|q �J�C��,�[gd_scene load_steps=7 format=2]

[ext_resource path="res://LevelDrafts/Qbertcomposition6.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://flatqbert6.tscn" type="PackedScene" id=3]
[ext_resource path="res://CameraTilt.gd" type="Script" id=4]
[ext_resource path="res://flatqbert6.gd" type="Script" id=5]


[sub_resource type="GDScript" id=1]
script/source = "extends Spatial
"

[node name="Main" type="Spatial"]

[node name="Spatial" type="Spatial" parent="."]

[node name="Camera" type="Camera" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 20, 1.5 )
projection = 1
current = true
size = 30.0
near = 1.0
script = ExtResource( 4 )

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 3.09086e-08, 0.707107, 0.707107, 1, -4.37114e-08, 3.55271e-15, 3.09086e-08, 0.707107, -0.707107, -77, 15, 87 )

[node name="Player" parent="." instance=ExtResource( 2 )]
transform = Transform( 0.704796, -0.0023109, -0.709406, 0.579228, 0.579228, 0.573576, 0.409583, -0.815162, 0.409576, 0.00844896, 13.4035, -4.47969 )

[node name="qbert6" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.704796, -0.0023109, -0.709406, 0.579228, 0.579228, 0.573577, 0.409583, -0.815162, 0.409576, 0, 2.162, -3.25 )
visible = false
script = SubResource( 1 )

[node name="flatqbert6" parent="." instance=ExtResource( 3 )]
script = ExtResource( 5 )
       [gd_scene load_steps=3 format=2]

[ext_resource path="res://buildingBlocksPlain/Block.tscn" type="PackedScene" id=3]
[ext_resource path="res://buildingBlocksPlain/triBlock.tscn" type="PackedScene" id=4]

[node name="Main" type="Spatial"]

[node name="Spatial2" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 4, 0 )

[node name="Spatial3" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4, 0, 0 )

[node name="Spatial4" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 4 )

[node name="Block" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 3 )

[node name="Spatial5" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -4, 8 )

[node name="Spatial6" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4, -4, 4 )

[node name="Spatial7" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 8, -4, 0 )

[node name="Block2" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, -4, 7 )

[node name="Block3" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 7, -4, 3 )
  [gd_scene load_steps=5 format=2]

[ext_resource path="res://buildingBlocksPlain/Block.tscn" type="PackedScene" id=1]
[ext_resource path="res://buildingBlocksPlain/3rowBlock.tscn" type="PackedScene" id=2]
[ext_resource path="res://buildingBlocksPlain/triBlock.tscn" type="PackedScene" id=3]
[ext_resource path="res://buildingBlocksPlain/Stair.tscn" type="PackedScene" id=4]

[node name="Main" type="Spatial"]

[node name="Spatial2" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 4, 0 )

[node name="Spatial3" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4, 0, 0 )

[node name="Spatial4" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 4 )

[node name="Block" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 3 )

[node name="Spatial5" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -4, 8 )

[node name="Spatial6" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 4, -4, 4 )

[node name="Spatial7" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 8, -4, 0 )

[node name="Block2" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, -4, 7 )

[node name="Block3" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 7, -4, 3 )

[node name="Block4" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 10.8998, -8, 3 )

[node name="Block5" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 5, -8, 9 )

[node name="Block6" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -8, 13 )

[node name="Stair" parent="." instance=ExtResource( 4 )]
transform = Transform( 0, 0, -1, 0, 1, 0, 1, 0, 0, 5, 0, 3 )

[node name="Stair2" parent="." instance=ExtResource( 4 )]
transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 5, -2, 5 )

[node name="Stair3" parent="." instance=ExtResource( 4 )]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 9, -3, 2 )
[gd_scene load_steps=6 format=2]

[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://buildingBlocksPlain/Stair.tscn" type="PackedScene" id=2]
[ext_resource path="res://buildingBlocksPlain/Block.tscn" type="PackedScene" id=3]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 4, 1, 4 )

[sub_resource type="CubeMesh" id=2]
size = Vector3( 8, 2, 8 )

[node name="Main" type="Spatial"]

[node name="Ground" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="Ground"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="Ground"]
mesh = SubResource( 2 )

[node name="Player" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3.14407, 0.697405, 3.14707 )

[node name="Spatial" type="Spatial" parent="."]
transform = Transform( 0.965926, -0.25, -0.0669873, 0.258819, 0.933013, 0.25, 0, -0.258819, 0.965926, 0, 0, 0 )

[node name="Camera" type="Camera" parent="Spatial"]
transform = Transform( 0.707107, 0, 0.707107, 0, 1, 0, -0.707107, 0, 0.707107, 10, 0, 10 )
current = true
size = 20.0
near = 1.0

[node name="Stair1" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 0, -1 )

[node name="Stair2" parent="." instance=ExtResource( 2 )]
transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 2, 0, -3 )

[node name="Stair3" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, -3, 1, 2 )

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 13, -12.7408, 0 )

[node name="Block1" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -3, 0, -1 )

[node name="Block2" parent="." instance=ExtResource( 3 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -3 )
        [gd_resource type="MeshLibrary" load_steps=6 format=2]

[sub_resource type="CubeMesh" id=1]

[sub_resource type="CubeMesh" id=2]
size = Vector3( 1, 4, 2 )

[sub_resource type="CubeMesh" id=3]
size = Vector3( 2, 4, 1 )

[sub_resource type="CubeMesh" id=4]
size = Vector3( 2, 1, 4 )

[sub_resource type="CubeMesh" id=5]
size = Vector3( 1, 1, 1 )

[resource]
item/0/name = ""
item/0/mesh = SubResource( 1 )
item/0/mesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/0/shapes = [  ]
item/0/navmesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/1/name = ""
item/1/mesh = SubResource( 2 )
item/1/mesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/1/shapes = [  ]
item/1/navmesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/2/name = ""
item/2/mesh = SubResource( 3 )
item/2/mesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/2/shapes = [  ]
item/2/navmesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/3/name = ""
item/3/mesh = SubResource( 4 )
item/3/mesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/3/shapes = [  ]
item/3/navmesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/4/name = ""
item/4/mesh = SubResource( 5 )
item/4/mesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
item/4/shapes = [  ]
item/4/navmesh_transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0 )
__meta__ = {
"_editor_source_scene": "res://facesScenes/stairfaces2.tscn"
}
        GDSC      	   "   �      ������������϶��   ����Ҷ��   �����������Ӷ���   ����������������ض��   �������϶���   ��������   ���������������Ŷ���   ����׶��   ��������ض��   ����¶��   ����������������������Ҷ   ζ��   ̶��   ����������Ķ   ϶��   �������������Ӷ�   �涶     �B      @     HB   
   move_right           	   move_left      	   move_back         move_forward      jump                   	                                 	      
   &      -      .      /      8      >      G      M      N      W      ]      f      l      m      n      x      �      �      �      �      �      �       �   !   �   "   3YY8;�  Y8;�  �  Y8;�  �  YYY;�  �  T�  YY0�  P�  QV�  ;�  �  T�  �  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  �  �  �  T�  �  T�  �  �  �  T�  �  T�  �  �  �  &�  PQ�	  T�
  P�  QV�  �  T�  �  �  �  �  �  T�  �  �  �  �  �  P�  R�  T�  QY`     [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player/snapMovement.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]
margin = 0.001
extents = Vector3( 0.5, 0.5, 0.5 )

[sub_resource type="CubeMesh" id=2]
size = Vector3( 1, 1, 1 )

[sub_resource type="SpatialMaterial" id=3]
albedo_color = Color( 0.992157, 0, 1, 1 )

[node name="Player" type="KinematicBody"]
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.5, 0 )
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.5, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../CollisionShape")
material/0 = SubResource( 3 )
         GDSC            e      ������������϶��   ���������������Ŷ���   ����׶��   ����¶��   ����������������������Ҷ   ���������������Ӷ���   
   move_right                  	   move_left         move_forward   	   move_back                      
                   )      6      7   	   @   
   M      V      c      3YY0�  P�  QV�  &�  T�  PQV�  �  P�  P�  R�  R�  QQ�  &�  T�  P�  QV�  �  P�  P�  R�  R�  QQ�  �  &�  T�  P�  QV�  �  P�  P�  R�  R�  QQ�  &�  T�  P�  QV�  �  P�  P�  R�  R�  QQY`     GDSC   .      :   �     ������ƶ   ���Ӷ���   �����Ķ�   ����ć��   ����Ą��   ����ą��   �����϶�   ����Ŷ��   �������������������Ҷ���   �����Ķ�   ����ć��   ����Ą��   ����ą��   ���������������Ӷ���   �Ҷ�   ����϶��   ����Ŷ��   �������������Ŷ�   ߶��   ������������۶��   ζ��   ϶��   ̶��   �����Ҷ�   ������Ķ   ���¶���   ������Ŷ   ��������¶��   ���ڶ���   ������¶   �������Ӷ���   �����������Ҷ���   ����������ض   ������������۶��   ��������Ҷ��   �������Ŷ���   ����׶��   ����¶��   ����������������������Ҷ   ������������Ķ��   ���������Ҷ�   ��������۶��   ����Ŷ��   ������Ҷ   �������Ӷ���   �������������������Ӷ���       res://facesScenes/cubefaces.tscn      res://player/Player.tscn   !   res://facesScenes/stairfaces.tscn      "   res://facesScenes/stairfaces2.tscn     "   res://facesScenes/stairfaces4.tscn                                       flip_world_cw         flip_world_ccw        restart                                      #      +      ,   	   -   
   3      ;      C      K      S      [      b      i      p      w      ~            �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *   $  +   )  ,   ,  -   -  .   .  /   5  0   >  1   N  2   a  3   b  4   k  5   {  6   �  7   �  8   �  9   �  :   3YY:�  ?PQY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QY:�  ?P�  QYYY0�  PQV�  ;�  �  P�  Q�  ;�	  �  P�  Q�  ;�
  �  P�  Q�  ;�  �  P�  Q�  ;�  �  P�	  Q�  �  P�  R�  Q�  �  P�	  R�  Q�  �  P�
  R�  Q�  �  P�  R�  Q�  �  P�  R�  Q�  �  YYY0�  P�  V�  QV�  ;�  LM�  ;�  �  PQ�  )�  �  V�  &P�  P�  T�  R�  T�  R�  T�  Q�  QV�  �  T�  P�  Q�  .�  �  Y0�  P�  V�  R�  QV�  ;�  �  PQ�  )�  �  V�  ;�  �  P�  R�  R�  Q�  Y0�  P�  V�  R�  V�  R�  QV�  ;�  �  T�  PQ�  �  �  P�  T�  R�  T�  R�  T�  Q�  �  T�   �  �  �!  P�  T�  R�  T�  R�  T�  R�  Q�  �"  P�  Q�  .�  �  YY0�#  P�$  QV�  &�%  T�&  P�
  QV�  ;�'  �  P�  R�  R�  QT�(  PQ�  �)  T�*  �)  T�*  T�+  P�'  R�  Z�	  Q�  �  &�%  T�&  P�  QV�  ;�'  �  P�  R�  R�  QT�(  PQ�  �)  T�*  �)  T�*  T�+  P�'  R�  Z�	  Q�  �  &�%  T�&  P�  QV�  �,  PQT�-  PQY`              [gd_scene load_steps=4 format=2]

[ext_resource path="res://PlaceholderMeshLib.tres" type="MeshLibrary" id=1]
[ext_resource path="res://QbertGridMap.gd" type="Script" id=2]

[sub_resource type="NavigationMesh" id=1]
vertices = PoolVector3Array( 0.5, 4, -6.5, 0.5, 4, -3.5, 1.5, 4, -3.5, 1.5, 4, -6.5, -3.25, 8.5, -5.5, -3.25, 8.5, -4.25, -2.5, 8.5, -4.5, -2.5, 8.5, -5.5, -1.25, 6.5, -5.5, -1.25, 6.5, -4.25, -0.5, 6.5, -4.25, -0.5, 6.5, -5.5, 2.75, 2.5, -5.5, 2.75, 2.5, -4.25, 3.75, 2.5, -4.25, 3.75, 2.5, -5.5, 4.75, 0.5, -5.5, 4.75, 0.5, -4.5, 5.5, 0.5, -4.5, 5.5, 0.5, -5.5, 6.75, -1.5, -5.5, 6.75, -1.5, -4.25, 7.5, -1.5, -4.25, 7.5, -1.5, -5.5, 8.75, -3.5, -5.5, 8.75, -3.5, -4.5, 9.5, -3.5, -4.5, 9.5, -3.5, -5.5, -5.5, 8.5, -3.25, -5.5, 8.5, -2.25, -4.5, 8.5, -2.25, -4.5, 8.5, -3.25, -1.5, 4.5, -3.25, -1.5, 4.5, -2.25, -0.5, 4.5, -2.25, -0.5, 4.5, -3.25, 2.75, 0.5, -3.25, 2.75, 0.5, -2.25, 3.5, 0.5, -2.25, 3.5, 0.5, -3.25, 6.75, -3.5, -3.25, 6.75, -3.5, -2.5, 7.5, -3.5, -2.5, 7.5, -3.5, -3.25, 4.75, -3.5, -1.5, 4.75, -3.5, -0.5, 5.5, -3.5, -0.5, 5.5, -3.5, -1.5, -5.5, 6.5, -1.25, -5.5, 6.5, -0.5, -4.5, 6.5, -0.5, -4.5, 6.5, -1.25, -3.25, 4.5, -1.25, -3.25, 4.5, -0.5, -2.5, 4.5, -0.5, -2.5, 4.5, -1.25, -1.25, 2.5, -1.25, -1.25, 2.5, -0.5, -0.5, 2.5, -0.5, -0.5, 2.5, -1.25, 2.5, -1.5, -1.25, 2.5, -1.5, -0.5, 3.5, -1.5, -0.5, 3.5, -1.5, -1.25, -5.5, 4.5, 0.75, -5.5, 4.5, 1.75, -4.5, 4.5, 1.75, -4.5, 4.5, 0.75, -1.25, 0.5, 0.75, -1.25, 0.5, 1.75, -0.5, 0.5, 1.75, -0.5, 0.5, 0.75, 0.75, -1.5, 0.75, 0.75, -1.5, 1.75, 1.5, -1.5, 1.75, 1.5, -1.5, 0.75, 2.75, -3.5, 0.75, 2.75, -3.5, 1.5, 3.5, -3.5, 1.5, 3.5, -3.5, 0.75, -3.25, 0.5, 2.5, -3.25, 0.5, 3.75, -2.5, 0.5, 3.5, -2.5, 0.5, 2.5, -5.5, 2.5, 2.75, -5.5, 2.5, 3.75, -4.25, 2.5, 3.75, -4.25, 2.5, 2.75, -1.25, -1.5, 2.75, -1.25, -1.5, 3.75, -0.5, -1.5, 3.75, -0.5, -1.5, 2.75, 0.75, -3.5, 2.75, 0.75, -3.5, 3.5, 1.5, -3.5, 3.5, 1.5, -3.5, 2.75, -5.5, 0.5, 4.75, -5.5, 0.5, 5.75, -4.5, 0.5, 5.75, -4.5, 0.5, 4.75, -1.5, -3.5, 4.75, -1.5, -3.5, 5.5, -0.5, -3.5, 5.5, -0.5, -3.5, 4.75, -5.5, -1.5, 6.75, -5.5, -1.5, 7.75, -4.5, -1.5, 7.75, -4.5, -1.5, 6.75, -3.25, -3.5, 6.75, -3.25, -3.5, 7.5, -2.5, -3.5, 7.5, -2.5, -3.5, 6.75, -5.5, -3.5, 8.75, -5.5, -3.5, 9.5, -4.5, -3.5, 9.5, -4.5, -3.5, 8.75 )
polygons = [ PoolIntArray( 3, 2, 0 ), PoolIntArray( 0, 2, 1 ), PoolIntArray( 7, 6, 4 ), PoolIntArray( 4, 6, 5 ), PoolIntArray( 11, 10, 8 ), PoolIntArray( 8, 10, 9 ), PoolIntArray( 15, 14, 12 ), PoolIntArray( 12, 14, 13 ), PoolIntArray( 19, 18, 16 ), PoolIntArray( 16, 18, 17 ), PoolIntArray( 23, 22, 20 ), PoolIntArray( 20, 22, 21 ), PoolIntArray( 27, 26, 24 ), PoolIntArray( 24, 26, 25 ), PoolIntArray( 31, 30, 28 ), PoolIntArray( 28, 30, 29 ), PoolIntArray( 35, 34, 32 ), PoolIntArray( 32, 34, 33 ), PoolIntArray( 39, 38, 36 ), PoolIntArray( 36, 38, 37 ), PoolIntArray( 43, 42, 40 ), PoolIntArray( 40, 42, 41 ), PoolIntArray( 47, 46, 44 ), PoolIntArray( 44, 46, 45 ), PoolIntArray( 51, 50, 48 ), PoolIntArray( 48, 50, 49 ), PoolIntArray( 55, 54, 52 ), PoolIntArray( 52, 54, 53 ), PoolIntArray( 59, 58, 56 ), PoolIntArray( 56, 58, 57 ), PoolIntArray( 63, 62, 60 ), PoolIntArray( 60, 62, 61 ), PoolIntArray( 67, 66, 64 ), PoolIntArray( 64, 66, 65 ), PoolIntArray( 71, 70, 68 ), PoolIntArray( 68, 70, 69 ), PoolIntArray( 75, 74, 72 ), PoolIntArray( 72, 74, 73 ), PoolIntArray( 79, 78, 76 ), PoolIntArray( 76, 78, 77 ), PoolIntArray( 83, 82, 80 ), PoolIntArray( 80, 82, 81 ), PoolIntArray( 87, 86, 84 ), PoolIntArray( 84, 86, 85 ), PoolIntArray( 91, 90, 88 ), PoolIntArray( 88, 90, 89 ), PoolIntArray( 95, 94, 92 ), PoolIntArray( 92, 94, 93 ), PoolIntArray( 99, 98, 96 ), PoolIntArray( 96, 98, 97 ), PoolIntArray( 103, 102, 100 ), PoolIntArray( 100, 102, 101 ), PoolIntArray( 107, 106, 104 ), PoolIntArray( 104, 106, 105 ), PoolIntArray( 111, 110, 108 ), PoolIntArray( 108, 110, 109 ), PoolIntArray( 115, 114, 112 ), PoolIntArray( 112, 114, 113 ) ]

[node name="QbertLevel" type="Spatial"]

[node name="Camera" type="Camera" parent="."]
transform = Transform( 0.707107, -0.40558, 0.579228, 0, 0.819152, 0.573577, -0.707107, -0.40558, 0.579228, 13, 14, 11 )
projection = 1
size = 30.0

[node name="DirectionalLight" type="DirectionalLight" parent="Camera"]

[node name="NavigationMeshInstance" type="NavigationMeshInstance" parent="."]
navmesh = SubResource( 1 )

[node name="QbertGridMap" type="GridMap" parent="NavigationMeshInstance"]
mesh_library = ExtResource( 1 )
data = {
"cells": PoolIntArray( 65534, 0, 2, 131069, 0, 1376256, -196607, 0, 1376256, -131072, 0, 1376256, -1, 0, 1376256, 65533, 1, 1376256, -196608, 1, 1376256, -65537, 1, 1376256, -2, 1, 1376256, -131073, 2, 1376256, -65538, 2, 1, -3, 2, 1376256, -131074, 3, 1376256, -65539, 3, 1376256, -131075, 4, 1376256, 1, 65533, 1376256, 65536, 65533, 3, 196607, 65533, 1376256, 262142, 65533, 1376256, 327677, 65533, 0, 393213, 65533, 4, -196604, 65533, 1376256, -131069, 65533, 1376256, -65534, 65533, 1376256, 0, 65534, 1376256, 131071, 65534, 1376256, 196606, 65534, 1, 262141, 65534, 1376256, -196605, 65534, 1376256, -131070, 65534, 2, -65535, 65534, 1376256, 65535, 65535, 1376256, 131070, 65535, 1376256, 196605, 65535, 1376256, -196606, 65535, 1376256, -131071, 65535, 1376256, -65536, 65535, 1 )
}
script = ExtResource( 2 )
__meta__ = {
"_editor_clip_": 0,
"_editor_floor_": Vector3( 0, 5, 0 )
}
        [gd_scene load_steps=4 format=2]

[ext_resource path="res://buildingBlocksPlain/Block.tscn" type="PackedScene" id=1]

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]

[node name="Block" type="Spatial"]

[node name="StaticBody" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="StaticBody/CollisionShape"]
mesh = SubResource( 2 )
skeleton = NodePath("../..")

[node name="Block" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 2, 0, -2 )

[node name="Block2" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -2, 0, 2 )
         [gd_scene load_steps=3 format=2]

[sub_resource type="BoxShape" id=1]

[sub_resource type="CubeMesh" id=2]

[node name="Block" type="Spatial"]

[node name="StaticBody" type="StaticBody" parent="."]
transform = Transform( 0.707107, 0, -0.707107, 0, 1, 0, 0.707107, 0, 0.707107, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="StaticBody"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="StaticBody/CollisionShape"]
transform = Transform( 0.707107, 0, 0.707107, 0, 1, 0, -0.707107, 0, 0.707107, 0, 0, 0 )
mesh = SubResource( 2 )
skeleton = NodePath("../..")
             [gd_scene load_steps=11 format=2]

[sub_resource type="BoxShape" id=1]
margin = 0.001
extents = Vector3( 0.2, 1, 1 )

[sub_resource type="CubeMesh" id=2]
size = Vector3( 0.4, 2, 2 )

[sub_resource type="BoxShape" id=3]
extents = Vector3( 0.2, 0.8, 1 )

[sub_resource type="CubeMesh" id=4]
size = Vector3( 0.4, 1.6, 2 )

[sub_resource type="BoxShape" id=5]
extents = Vector3( 0.2, 0.6, 1 )

[sub_resource type="CubeMesh" id=6]
size = Vector3( 0.4, 1.2, 2 )

[sub_resource type="BoxShape" id=7]
extents = Vector3( 0.2, 0.4, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 0.4, 0.8, 2 )

[sub_resource type="BoxShape" id=9]
extents = Vector3( 0.2, 0.2, 1 )

[sub_resource type="CubeMesh" id=10]
size = Vector3( 0.4, 0.4, 2 )

[node name="Stair" type="StaticBody"]

[node name="CollisionShapeA" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.8, 1, 0 )
shape = SubResource( 1 )

[node name="MeshInstanceA" type="MeshInstance" parent="CollisionShapeA"]
mesh = SubResource( 2 )

[node name="CollisionShapeB" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.4, 0.8, 0 )
shape = SubResource( 3 )

[node name="MeshInstanceB" type="MeshInstance" parent="CollisionShapeB"]
mesh = SubResource( 4 )

[node name="CollisionShapeC" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.6, 0 )
shape = SubResource( 5 )

[node name="MeshInstanceC" type="MeshInstance" parent="CollisionShapeC"]
mesh = SubResource( 6 )

[node name="CollisionShapeD" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.4, 0.4, 0 )
shape = SubResource( 7 )

[node name="MeshInstanceD" type="MeshInstance" parent="CollisionShapeD"]
mesh = SubResource( 8 )

[node name="CollisionShapeE" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.8, 0.2, 0 )
shape = SubResource( 9 )

[node name="MeshInstanceE" type="MeshInstance" parent="CollisionShapeE"]
mesh = SubResource( 10 )
   [gd_scene load_steps=9 format=2]

[sub_resource type="BoxShape" id=1]
margin = 0.001
extents = Vector3( 0.2, 1.8, 1 )

[sub_resource type="CubeMesh" id=2]
size = Vector3( 0.5, 4, 2 )

[sub_resource type="BoxShape" id=3]
extents = Vector3( 0.2, 1.5, 1 )

[sub_resource type="CubeMesh" id=4]
custom_aabb = AABB( 0, 0.5, 0, 0, 0, 0 )
size = Vector3( 0.5, 3.5, 2 )

[sub_resource type="BoxShape" id=5]
extents = Vector3( 0.25, 0.5, 1 )

[sub_resource type="CubeMesh" id=6]
size = Vector3( 0.5, 1.2, 2 )

[sub_resource type="BoxShape" id=7]
extents = Vector3( 0.25, 0.25, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 0.5, 0.5, 2 )

[node name="3Stair" type="StaticBody"]

[node name="CollisionShapeA" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.8, 2, 0 )
shape = SubResource( 1 )

[node name="MeshInstanceA" type="MeshInstance" parent="CollisionShapeA"]
mesh = SubResource( 2 )

[node name="CollisionShapeB" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 1.75, 0 )
shape = SubResource( 3 )

[node name="MeshInstanceB" type="MeshInstance" parent="CollisionShapeB"]
mesh = SubResource( 4 )

[node name="CollisionShapeC" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.25, 0.6, 0 )
shape = SubResource( 5 )

[node name="MeshInstanceC" type="MeshInstance" parent="CollisionShapeC"]
mesh = SubResource( 6 )

[node name="CollisionShapeD" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, 0.25, 0 )
shape = SubResource( 7 )

[node name="MeshInstanceD" type="MeshInstance" parent="CollisionShapeD"]
mesh = SubResource( 8 )
[gd_scene load_steps=2 format=2]

[ext_resource path="res://buildingBlocksPlain/Block.tscn" type="PackedScene" id=1]

[node name="Spatial" type="StaticBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 0, -1 )

[node name="Blocka" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Blockb" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3, -2, 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Blockc" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -2, 3 )
__meta__ = {
"_edit_group_": true
}
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC                   ������ڶ   �����϶�                                                 	   	   
   
                                                                                 3YYYYYYYYY0�  PQV�  -YYYYYYYYYYYY`   [gd_scene load_steps=10 format=2]

[sub_resource type="BoxShape" id=12]
extents = Vector3( 0, 1, 1 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=13]
size = Vector3( 0, 2, 2 )

[sub_resource type="BoxShape" id=7]
extents = Vector3( 1, 1, 0 )

[sub_resource type="SpatialMaterial" id=8]
albedo_color = Color( 0, 1, 0.00784314, 1 )

[sub_resource type="CubeMesh" id=9]
size = Vector3( 2, 2, 0 )

[sub_resource type="BoxShape" id=4]
extents = Vector3( 1, 0, 1 )

[sub_resource type="SpatialMaterial" id=10]
albedo_color = Color( 0, 0, 1, 1 )

[sub_resource type="CubeMesh" id=11]
size = Vector3( 2, 0, 2 )

[node name="Level" type="Spatial"]

[node name="LeftFaceBody" type="KinematicBody" parent="."]

[node name="LeftFace" type="CollisionShape" parent="LeftFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0 )
shape = SubResource( 12 )

[node name="MeshInstance" type="MeshInstance" parent="LeftFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0 )
material_override = SubResource( 5 )
mesh = SubResource( 13 )
skeleton = NodePath("../LeftFace")

[node name="RightFaceBody" type="KinematicBody" parent="."]

[node name="RightFace" type="CollisionShape" parent="RightFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
shape = SubResource( 7 )

[node name="MeshInstance" type="MeshInstance" parent="RightFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
material_override = SubResource( 8 )
mesh = SubResource( 9 )
skeleton = NodePath("../RightFace")

[node name="TopFaceBody" type="KinematicBody" parent="."]

[node name="TopFace" type="CollisionShape" parent="TopFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="TopFaceBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
material_override = SubResource( 10 )
mesh = SubResource( 11 )
skeleton = NodePath("../TopFace")
    [gd_scene load_steps=15 format=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0, 0.4, 1 )

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=3]
material = SubResource( 2 )
size = Vector3( 0, 0.8, 2 )

[sub_resource type="BoxShape" id=4]
extents = Vector3( 0.25, 0, 1 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.0627451, 1, 0, 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.5, 0, 2 )

[sub_resource type="CubeMesh" id=7]
size = Vector3( 2, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=11]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 1.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=9]
size = Vector3( 1, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=13]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=10]
size = Vector3( 0.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=14]
albedo_color = Color( 0.054902, 0, 1, 1 )

[node name="Spatial" type="Spatial"]

[node name="vert1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert1"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert1"]
mesh = SubResource( 3 )

[node name="vert2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.5, 0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert2"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert2"]
mesh = SubResource( 3 )

[node name="vert3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert3"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert3"]
mesh = SubResource( 3 )

[node name="vert4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.8, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert4"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert4"]
mesh = SubResource( 3 )

[node name="vert5" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 2.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert5"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert5"]
mesh = SubResource( 3 )

[node name="hor1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, -0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor1"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor1"]
mesh = SubResource( 6 )

[node name="hor2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.25, 0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor2"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor2"]
mesh = SubResource( 6 )

[node name="hor3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 1.4, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor3"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor3"]
mesh = SubResource( 6 )

[node name="hor4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor4"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor4"]
mesh = SubResource( 6 )

[node name="Spatial" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, 0 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="Spatial"]
depth = 2.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )
         [gd_scene load_steps=15 format=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0, 0.4, 1 )

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=3]
material = SubResource( 2 )
size = Vector3( 0, 0.8, 2 )

[sub_resource type="BoxShape" id=4]
extents = Vector3( 0.25, 0, 1 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.0627451, 1, 0, 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.5, 0, 2 )

[sub_resource type="CubeMesh" id=7]
size = Vector3( 2, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=11]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 1.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=9]
size = Vector3( 1, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=13]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=10]
size = Vector3( 0.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=14]
albedo_color = Color( 0.054902, 0, 1, 1 )

[node name="Spatial" type="Spatial"]
transform = Transform( -4.37114e-08, 0, -1, 0, 1, 0, 1, 0, -4.37114e-08, 0, 0, 0 )

[node name="vert1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert1"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert1"]
mesh = SubResource( 3 )

[node name="vert2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.5, 0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert2"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert2"]
mesh = SubResource( 3 )

[node name="vert3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert3"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert3"]
mesh = SubResource( 3 )

[node name="vert4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.8, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert4"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert4"]
mesh = SubResource( 3 )

[node name="vert5" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 2.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert5"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert5"]
mesh = SubResource( 3 )

[node name="hor1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, -0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor1"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor1"]
mesh = SubResource( 6 )

[node name="hor2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.25, 0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor2"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor2"]
mesh = SubResource( 6 )

[node name="hor3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 1.4, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor3"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor3"]
mesh = SubResource( 6 )

[node name="hor4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor4"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor4"]
mesh = SubResource( 6 )

[node name="wall1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, 0 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
depth = 0.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )

[node name="wall2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, -2 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
depth = 0.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )
        [gd_scene load_steps=15 format=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0, 0.4, 1 )

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=3]
material = SubResource( 2 )
size = Vector3( 0, 0.8, 2 )

[sub_resource type="BoxShape" id=4]
extents = Vector3( 0.25, 0, 1 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.0627451, 1, 0, 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.5, 0, 2 )

[sub_resource type="CubeMesh" id=7]
size = Vector3( 2, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=11]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 1.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=9]
size = Vector3( 1, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=13]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=10]
size = Vector3( 0.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=14]
albedo_color = Color( 0.054902, 0, 1, 1 )

[node name="Spatial" type="Spatial"]

[node name="vert1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert1"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert1"]
mesh = SubResource( 3 )

[node name="vert2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.5, 0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert2"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert2"]
mesh = SubResource( 3 )

[node name="vert3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert3"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert3"]
mesh = SubResource( 3 )

[node name="vert4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.8, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert4"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert4"]
mesh = SubResource( 3 )

[node name="vert5" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 2.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert5"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert5"]
mesh = SubResource( 3 )

[node name="hor1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, -0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor1"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor1"]
mesh = SubResource( 6 )

[node name="hor2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.25, 0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor2"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor2"]
mesh = SubResource( 6 )

[node name="hor3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 1.4, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor3"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor3"]
mesh = SubResource( 6 )

[node name="hor4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor4"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor4"]
mesh = SubResource( 6 )

[node name="Spatial" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, 0 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="Spatial"]
depth = 2.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )
    [gd_scene load_steps=15 format=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0, 0.4, 1 )

[sub_resource type="SpatialMaterial" id=2]
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="CubeMesh" id=3]
material = SubResource( 2 )
size = Vector3( 0, 0.8, 2 )

[sub_resource type="BoxShape" id=4]
extents = Vector3( 0.25, 0, 1 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.0627451, 1, 0, 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.5, 0, 2 )

[sub_resource type="CubeMesh" id=7]
size = Vector3( 2, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=11]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=8]
size = Vector3( 1.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=9]
size = Vector3( 1, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=13]
albedo_color = Color( 0.054902, 0, 1, 1 )

[sub_resource type="CubeMesh" id=10]
size = Vector3( 0.5, 0.8, 0 )

[sub_resource type="SpatialMaterial" id=14]
albedo_color = Color( 0.054902, 0, 1, 1 )

[node name="Spatial" type="Spatial"]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, -1, 0, 1, -4.37114e-08, 0, 0, 0 )

[node name="vert1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, -0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert1"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert1"]
mesh = SubResource( 3 )

[node name="vert2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.5, 0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert2"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert2"]
mesh = SubResource( 3 )

[node name="vert3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert3"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert3"]
mesh = SubResource( 3 )

[node name="vert4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.8, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert4"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert4"]
mesh = SubResource( 3 )

[node name="vert5" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -1, 2.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="vert5"]
shape = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="vert5"]
mesh = SubResource( 3 )

[node name="hor1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.75, -0.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor1"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor1"]
mesh = SubResource( 6 )

[node name="hor2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.25, 0.6, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor2"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor2"]
mesh = SubResource( 6 )

[node name="hor3" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 1.4, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor3"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor3"]
mesh = SubResource( 6 )

[node name="hor4" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2.2, 0 )

[node name="CollisionShape" type="CollisionShape" parent="hor4"]
shape = SubResource( 4 )

[node name="MeshInstance" type="MeshInstance" parent="hor4"]
mesh = SubResource( 6 )

[node name="wall1" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, 0 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
depth = 0.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="wall1"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )

[node name="wall2" type="KinematicBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.2, -2 )

[node name="CollisionPolygon" type="CollisionPolygon" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1 )
depth = 0.0
polygon = PoolVector2Array( -1, -0.8, 1, -0.8, 1, 0, 0.5, 0, 0.5, 0.8, 0, 0.8, 0, 1.6, -0.5, 1.6, -0.5, 2.4, -1, 2.4 )

[node name="MeshInstance" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.4, 1 )
mesh = SubResource( 7 )
material/0 = SubResource( 11 )

[node name="MeshInstance2" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.25, 0.4, 1 )
mesh = SubResource( 8 )
material/0 = SubResource( 12 )

[node name="MeshInstance3" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.5, 1.2, 1 )
mesh = SubResource( 9 )
material/0 = SubResource( 13 )

[node name="MeshInstance4" type="MeshInstance" parent="wall2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -0.75, 2, 1 )
mesh = SubResource( 10 )
material/0 = SubResource( 14 )
        GDSC            -      ������ڶ   �������Ŷ���   �����׶�   ����¶��   ����������������������Ҷ   ���������������Ŷ���   ϶��      flip_world_cw      x         flip_world_ccw                                                   $   	   *   
   +      3YYY0�  P�  QV�  &�  T�  PQV�  �  T�  �  �  �  &�  T�  P�  QV�  �  T�  �  �  Y`  [gd_scene load_steps=2 format=2]

[ext_resource path="res://LevelDrafts/Qbertcomposition6.tscn" type="PackedScene" id=1]

[node name="Spatial" type="Spatial"]

[node name="Main" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.704796, -0.0023109, -0.709406, 0.579228, 0.579228, 0.573577, 0.409583, -0.815162, 0.409576, -0.00462176, 3.32046, -4.88032 )
  GDST�  9           �q WEBPRIFF�q WEBPVP8L�q /�� �HnI�$D���#��\�gCD�'`������W��n�w랞��G
Ӗ%gW<O��%���D+���݃�s���v{�Uc2�߶X���M^�nk�Z��c�6���^�=��;�el���,
�yO���FA�6������$9�h���m��o��|
x�' �P�Qj � ��W�	J� � U�\@	( PJ	!�� `! C�R����* |pP
0\( 
U
N� 'P�0(����a�`��>8 JY.� \ J���x���P �ĉ   ( V5	  `X� (��pay `@? / ,�.D �pbYʲ��2 ,!`�AMH��m$AR�>{9����CDL��7�n�������r��7��8�3�@�AZ?}eu��R+��T�i���+����K-�gsx:����ۃ�@����=� ����
�����JN�%F�(x6t��W�S�8tJ�h��` w��~��4mۦH������GDfVuOψ�����dff^K���:+1-YZ��:|�h��*3�����몲�̲j11l�6�<��OИa۶a�������@��(�A<�����m[�Ij��ny���˫��m��%@ �$��rw���ZIVB<lp�a���v-��_}����~�ou���e��$A�$zd����b�~G�oI�,I�lY�|�o�|�3e	�$7�D0�/K��Q۶lo�8���~�E�K�d����CMӔRf�aZf�)s�	Bm�an���L�Xz����:�5�󼒜~��[۶$љ����K���$A�$�����O���T��CI��f�DQ��q<��M�6�m�
GV5v��_��&���Wτm۶ݛ�j�E��>F"Bi�LXX���_?�i���G����������l<!	\m)u��J�Bq�u���>��s���#ם�����-I�%I�m!�Z�\��g;�Eط$I�$I��,�ѳ���ٻ2%J�R7��ۦ�����6�$I����{�W�L�#�z�DIr�66 1�m�_ ���m��b'E����س��۶mާ�_0��S�ײ1\��Lgj�I�a۶a�f��<G����Uۖ}qC��r�k���Vu�-�(		N�����+-��$O��u;��9�}/��:�x=ɭ@Wc�$I�$9�����>t�cl$I�$Ib�x�Ij���3��$�q��K� ��x��7��m�NI��2�*��ff~��L��������*)ЖtC�8m��}�C���m#E=�h��O������F��zO=�׍f�
������I35hT�S   {f���dH�C5���T>��) @  "���� �\WAdR�aNW�  �?g6��U��*~�/?̢�1AFz���_��>|4S�6�.K@C���� ��2��+ׅ����'~دY�g���ç�(�hP]�{�<�0���h������H>`���g�2��@Y�aİ�"� �� ��oB����hd�/ hP�����.D� ���?��e�����e��,|��7g�̑����"xY`@z����>B�4�0 �4��';T2Ҁ ���?0/@� �`�D�<` t>�?w�?� �?�: ��~ `�?��G��GC,�:������ �a� ,X� �aQ����Y�㊬����u�@����O���] =T
A�.l �Hޑ+�R 8 �:���@�=jwFA|���CU=���P���֢�R8���| �ʀ�B @! $,L@�	�~W���R\�P@� ��X�D$�x�5��x-�C(�@  !6�yS#XD$�c�`IXJ�
F � � �`,5aF�i ����.2b�	 $
 �@MMMN�C�Ɉ{�{�]M ���"�.�]"E�`�H��O�<�
���h��85BF�0򗆆D��(!�`h� �6%#$)H��"#�P��={������#:ˈ9� A���P0 FB�b�Ã�2��C�`$ d<1<F���љ�����p���!B9�<1CF%&�@@ �P�R,Db0!����e?�r�g�#-� �����%}:=UhQ�gL�4�`�G�:��1ޑ
��K|;F�paG��1�&�t!@J�#D"� ,Đ��1i%��82�Dv`2Z0FT�tY��� Q�J$���BDf878�D�����SSR2��a S3�#��`�Z�C��@�J@m����P�%Pa � 4XJ��P�xj�J���
���!
�`���D HD�4D C ����T�$��%�´��L m��DvQ,Fq�"�"��	L�G�-���)�i�cP��d	`�3a@���#B=J@ ��� �&��P���%��a��w3:zX��#�3G�!">D D� H��N��8P4f�Q��D
O� ��A�00� �1:)	<B�q$$p`8d<����C�H(#�b�P	ᘧJ�Q"� �H3s�.��0E�d0L"ADJ>?A $��+�1��@�t�S ����@$�6#(0$���D��MOM��� ��H�����$2"��" :$��� �0@!�H���R�%ڌ(!�#QZ���!"��ĄE�CA��GCENE`�HCDa,���H  &�TZ�,HԴH,BE���XbOIMN��@�`�%��vq���!���R�0ēA$�0�aL���^$���>L`ʔ����`3�t����()�<&v��F�)5�,�H3z)��8��t0�!���hc�q&,`!
�DjI�P�c	8:���B���Xj��##�AA8�pp�h� R&/2"*%�� �084b >�������1A��c�a�!A� ���@@ 	 @H��P�B00qI�!�H$�ܪ�� ��#Ǒ(3���$���鰉!G�Hq��  �+@�(�@�HP�T�2�g@��i rj2�	d�Q
�c�q�œ�r�!�eD��D�%�A�)h�LF�f<P Q�`,�Aqw�b.�iq�03�$XZ0% ��`ȉ6:a�@C����4�4(��P::AX&0�`H�E�xJ�$<}*r"Sʔ�#`Y��2a�����)P��.�@�AhS3�1�!��0DJjf��5��6
j� ��� � 9tE0x,�.Q�e����1!c�uv�3���h� -�4�"'cH���$�h����Ô(��.�������C"`Y�O���$a��	(% �H4(5}��L�$F!�L	�o� GJ I���h�0xRD .	���,	6&c$"Df8�A@�0T"��I�`�P ".���2�� B�#!���`C��e�.Lɐ���b�}L�(�$bag��@ ��ة8���SH��!���0L�1(LN"#@8�(��%��E�I4�\�!�dD����%c�Ђ`a���C8j:L)1Ӌx�0�DBi!0�H����7�Q !���X�Li���c؆p8"�����}Jj:Ԕd(��( p&�	�~"[[��gB�()��t҆)٠��C�!#z��g�1�$r	FhP:� 
�$,<�  �"�''cH�
�Ч�bIL�.��.}���Ң�#q���`�70S,��f�5�(��0���b�D��`hP0l�a�$ڀSX�UC	ci��[�i�Td2j2rJ�Xj�	5���GH�J ��g
G��$"� D�"E\R(�"@��$h�I���9c&��#���Ё'E�`��B!`�!D�H�4��ǇG%�	Sd���KC(��i1dB��g�>���2��0���� 0�T���d�[A b�7! 22j�!� ŒQ
j��a�6�cD���:8�0ŰE�.C�.L��h�ƱÈ6%C�"Sq� ��<�Ñ�Q\�7ao�DAE�1F�g�"K�Y�Jȱ"�X���6xv��#R� �(��@��%���\��`h�P����f��M�Xa��>�8&�F2&l��A䀄g��.-� ��!�HB!K�Cd"�}<���0�@d,Ң���]�А�O��6����8���L� 2�1cvi���!DN`KF$�ư�j��82r�.�&<�CCEGK�:Kf���-Z�,�2,�������τ::1C 1	��f���!�$R2S�JH�	!"< � �328`\�`��8�T�P��C 0@L `|("��� �"	�	}x�P(Eڈ�(7R3f
�ʂ<ؗ�L��Yf��s�-���`0��`8`��R��m�g	L82.��0��"LY%cL�'���<��L҆X|�8��S�SؤE�-*Z�0L�7qK"#g�LJ�X@0�	LF�0����w%�x22�LY�2]֘P�xF�c�Ó8���mn��Yg���G��& #$��6c�!5�>ˌ��³�K�Dd�DE� Cƀ.�q	f����P��f��5B��4D" 9����๑�I����R�D
�m����8<���e�q�ia zTbȀ�sC�Rs�EdL�S0��&�ئ��F�L�uC���밬��g	�%n� }Fl"{C����p�:�� �`�!�rL���d�,,.Pf@�E�*��Ĉ(pD�Q1���d����a�d@���T` v��r	�25N��Q�$Ɔ3#��"`��A� A I�M�G��d��K��x2p�����]�h�8�yα� �cPR":�ݷ� Fc�Q��~>��O�w����Ҟ��_��0O� %Sv2�!9BF�>�6���$b�Чx)��&P�ʀ-"-&�%�L�C�Q2aȄG�B�NQX$�!.b�)h�"�r��IO�69d��R��Li c0�Uhh��	$<Ld�ӌY�F*�L�!2b@IÔ	%���"r�.��aL�e&���"�@M�d8��%Kh�ƒH0����C""rr<5�`��1E!,	�b��zI�(X�O��Ee�%1v�b*'� �]|"�ӦGDQ  ¡$"�DB8��Y���Lt@� �����r�!�3SF�i�l��g	S@8��AD# �0AB�"�|TdR����P��@, UR.!�@�#�,��G�"���±`�M�p� Q�I�Bj�H� 1� � ��8Ǧ��D�e��P�t���l��	��IE륹<��CB��a!��H���xg�)�??�_J��B���&Pr���
F1�<�(9�i�pys21t�d�}��D�~���o�k��ȩM��>�[ ؖ�7Rx� �!G�[ �(�E�x3������2��0�h�>rW42���s~���H�w��� (����M}]׈�e���]���lG>O�@2��A�-�E�*W���r��0lɉ&I~s�I&	c������l�3��J� ��0B��D,`p�G ��eo�[*��� �'{���+���]�`��ܧ��0��z����@
���P�Q�胐��DX�����HA �)"&���! ���URz802��QF�#���l���!���*	�I#% RB�� GB��O�v_��105�8:09�	;�h�^knG�!#�0&��D�� 3L  �S)���8'  �5�֘� �r}�����
6�	��,�KA�A�$�Q� h\�xmK�Ի�AD�. ��tI���ߕ_2��tLS�a��U�4�]�R��⻠Ik<�nJ��Z�0��e3���9@��POE�ݫ'2�cn�K4��I��h�KEE@!�Ƣ8��g`C���X��?�7o�d^N-nA����S�]�3�`m,�m6p$"�`�%59�!:����@��)�"0��d�HPqH���p`2)�)�><uJ8x�0N���#j���C� �G��xHd8$`�2=���(�$(��yc�0��-rj��dX����&�͈�#�f�"I�,���X A U��\RcU��*�$"�pE�\'���f�J%
a\���9�"�p� ��
;M��F��
��Nn P��p� �fV2�f�v�e
�> S�Q�T�d]��¥�$3�2b��å!�Cu�١�>ܺ"60�Pɘ5B��	�$wfe > ��U�Y�`�	� �0 �F  %ͥ�D*j�h,��p�a�#0�a0�P���٨��h�n_�����z�rߟ��$���tC�XLǒ�� J��H�D0 �Y8 �Ih"p�=8LB(Y -� 0�		��)1>�%Rb$l$|4d��h4�� S8�h�0b0�)&1�	�
T٢f�c� �h0X����&Q�@��Pr�lS��a�1BD�I����
 $��D�pI$ `L @�T[�	_ hP��nG�(a1(	�B��`��r �G!����H(� ��j�W}[���<!\��
 �pX*6��g��/�"��P:�kM���@Ba���g�+� DD涇�@�a"��Q���	KFbJ������ A4I� �R�<?�.BF���M��%�Ȝ)�9��0HH����1�IJBv��)CLÑ��R"���"�A�qΘ��a3F����*�	B���%���1�OHL�!��ɂ9fL�E���� z%�4JE����Z2r<�&�0�N�F�c4��of�`�Ѷ D	(p��PIԀ��DI���?�v���Q"�&�I   	`	�1��)ʨD�*"svqnI�+�͇VL ���@���" �uԓ��h��ݐN �p7��;��N�@�'cLI�HF�J���� \�Ϯtb  ȉ$۝!�E�k��K��E�@͢/�KSa�`�ˮ(Ӡ�q�0(
 Jr`I$l�{�, �$cq��>�*��t�@AC��u��9����b��(�qXZ:�0G`B\T�L9�L�3 y�e�����@:(��q(�c�DH@ ��FD'�æ�1:>"#$f@�`\L`�E� ���%����@a"#3�b"2d��ľ��%pT�0�����ݨ1�����Z����z����ax�B X �����<~ŧ�A18,���g�KknO��RLĂ�*@�X�	�E �� R ��� L, �0 P�kТ���i��ʌ���+� @�R����V��-UQ3�����+}��cKD�������2#of�r���pPWс�\���%7cMB(� ��=����R �����,�GT�x�\Fa���~#7�'a�> 0�Os�'����w����X���2�r�BJDA�gB�}x��wK�3�B��&��D��2Ghp ())2�2a��@�F�2�		��T=������ԑ�Q�4Hq  \ :	" ��i�(+T���0��,��0_~�{�HbDbE`F��钥p� I'0�~0\8����dPQ�0.��D�Ȕ
q�/��nVY�X�{@H��A0 �l�D&�$�	8@���!9����q8;�f�LATf��@�zlag�!< �h�� Gn�����=Q�c����W!rƻs���c$�	�9�%-`��&�͛'�'�L)�	 �"�m��s��C:k� O�P2�� � ����(��+G!��e��ؠ�3|'��>�c��%�G-Br`Ƥ�x� $(��[a�P�`pl3�`�Q���0|\�1)�xR8�daP�T�`4��*>�<�3��
� ɀ�C�@tCVhM��]�x��Q�mW�(�.{2V-47'��,[GN����}��vڂX��U�1����>s�l����0F�Xr�(��8�B4�!o0  t� @$�' r���3�{� *W�\kOǁo�%/ ��#�Ӭ�aP^]0�1.+pn2dռRL�^_%�D����V�����
��Aѳ��  ��n������b �2(
P ؉�H$ �tt��n��=�D��@AY�S �k���9OI�Lֆ��2 ���aD�8��9��d��!�9xbR�d�ȣ3�! Q�Q�##��p�qe�a���ǩ�1��?6������h��(F�Q��8?�㱱>�Φd=����(l�X�QD�e�Bbe�X�ATq2�(��<�؋~H��PѢ,�XJ�xz�)ظ>���1�3�3W��90�6m,d�����IށrRkD6�k�:�h� ���- "3�bހ�@6D�GDR%���%@P�E �  �`V 	 ��C  ��u=ɿ���D\�#:AT�Y�
 ��� "w�#(w(��(@m��c3`�8-I�!	 ���3�05�C XY�a�" BD��x��@  �0LP���q�C6�PLz�Ì`��"�C�̘�	g�P�@��
Ł����	C$�A "`��JƄ�0���Djf̈xzl@ �c @�!Ǵ8�HLeDNFÒ�!cv��Sб��BdIG���!2���� ��`:D$�8��4ׂ��e�3d�;M�M�us���PRL�ID���-d P�0�&�uN� ��F��QB�xz���@�(`p   �Wc^��}3��OX8�$�*��(��|����0�U����ü֪��E@p�p��$	�  �c�aB�10(+�* !(
C EI���D��+B	��G�kZ�ǹ�Y2zԓ���G�cI˂>���X�i\�$$ؘ��Ȁ��8%�(�,�'�`�9��FxF���٠C�(B$�Q�1�,2'���A,9KC��"X�TdX@F�X�$c�R@i� L��@ ���M$��R3�w�����J0X� @B"Q>��qd9��HD  (�CKK�b�ajj#�� PA!�WsB�Ղ�Px���� ��2�� �5W(�HbA���c+���)�d�� !���	 0@P^=#�@D1�b ÀDD �J�(� $�� � _CK�S��=�p�frr�D
&l��Mn� 8@˘	22cf18%A���)�	<uT<)9rx��qj@KCF��-���i� z1 !�(š1Yұ`@�� @�PrLF�#'Bk$�asK�@D�E騹�=�i��`KM�6;�9�>ŒC0S>�{���O�g8G��ǘ!D�K"� 5�!}�95���X
P�82<P��������늠(��S����4�S��T0@I�a����H�*M(_Kރā#�� �`�5�$b" 
 �WQ1x�0ê�
p(JbUN���T�>�	v�;)�%p�&6\²�e΂u$b8,<jHؤ 8�ĨԘ��4�#�P�	��xZ<s��)9�3g�c�X XB��!���a `*�e�:x:*���0-�B�d8�%�aQ,���D��@0�b(x�ddx<��bɰ8r:,��q�����BCFDY���=����  a1�}�`�8�5#�x͈
 E!  9@�N��0!�C���P�D"A�� &CQ� ^[��8��D$b�ll�
 �0� �Z�(��  �W�ªH�"  �J)}M�_��l���r�`�N0���K����LB��T	ш!0Z� <C���S�9�H\ħ	��aHN�chA(3%}n�0���$F� �R�$�>=Jf��a��$ǒѠ
K��ǳ���1�D�HK��f�&W�Q,=�\g�#�� �S0��D�`0xO�U|�}G�Q.@�,hBK�V�(9!"(+.P�@�%�0Ccx�Y��ս��	@� (� @�+�ɳ�b� S��� � �`r����{!�ܑ �@ @F�$ ���
 � �#��"(��P^Eq By��1� !�8���}��I�&PN�QpDEΈ"���f�&�%BF��N
"$EŦ� �!L�Ddy��223""C(X���dT�d�D$�X S:<=N�4k��cP֘ӱ$QPb1,��`��q, @EFMAԀB(h�GN��� l��2�!�:*�DC�`�в��|�3(-��c��3�!CP� OCĐ�Ba10`�Ѡeʔ�X�;c(
hyU!�0��l��h8����� � �cY�0+ՇY�  ��b���-�8� � �  �#q! d���:�9(	��*� �"Sb�l� E��$~�'pg'ݘ8ǔ�<`���%�O�J@�2
]<8Tb�00h�R�#�0�!B�N�Ya�$� Ѓ�H� G�a�F$v�9 ��0��IP0�d�`��,K<���%�!��C����9SN2&�0�9��!KN�L�1���F�����%�B`�63EX�Π(� &�P�( ���e��c��� X ���C�9`@0�"(���@,�u$�H!
�p*�c�캢	���H��X�X�� ��$  ���`x�����Sp@m�+��?.��%!�$��0�� �h0d�xi��?�zvNz# ��aX*��̘��茉�4 0Z(H�0d"�a,3�0Fe@e�K�(C2�1� -}�!nSpS��l!��S#�tx�82��D�T��S�l��px,���b�CN���Djr�ӣ`��+,���[��:%�H\b��(79Oů���� !R��۸�;��z�iQ�`^�O	�� ��@��NG:C1�P ��Ah)X����|O��0 @A���B0LgY�q]O	CF�k� !(a D�1�� c @�, ���ah<��� �(+�O�Q d$e08 � �}�C*�DG�G�6)�!2"1EQ�R�G���L��B���8 f��!�p�09)J��"�0��	t�1��%S�p��b00�BG@a
��0J����0���8%9@X6Y��XR��c��x�� 3�fA���ڠ(J����A���]�@ ^������sVwj��OɊ�� ��  ����
 @P��B�A @ D�\Ն �@� <��F  +煎�p�
�2  ���0��@+�} C(�� 8�b��� @F�HD!L��3�O�G7	�a��L��b���4�f�D0���	a`T0	:)C��Pa���0 "*�0�`�؄aCF�%������8�OF�!@ <9!�c((!:��x�@ "$	�!GH0GKØ>�$2�:�#	$"�T��  �
��� <F cQ^�� ��xm�D "O�b�� � "��0W]y j�`00�y�WN�0#�$��%��!�R��R1��P�CY� (�D"� ��0B$p  �~q  EQ,�� �s�0�0�  V2%�����!N�� �gAG�F�I(5��U<)��OP�$p�0(2}<	��,�#�``�xBI %�8&�I��r@I�!�$'cJ@08 B$��X<�z�(�������Q,B q��F	 ��l�!:*���8@����5`1�(�:�c�(B ���e���5��X�^�r<D���:�  q�Q;� &031���y��E �� G�����k��a�s�r� V'����0DB`�I$  �^ (��aj�x��&t4D�4ws�>�x�aH��4�/�f���X2��<#\�(P\(��"@D�� QAHX���Ӡt$<D�� �tTJǐ�D��C��� &!JK ��	P��YG`�G����-�!%�	̈� �OF" T13Yˬ �)K�,Z+y��*B�  ��$<��b �H ���92�"��LP(�BC@18<@Pe�b� �`�4 �@"a(�D��� �"aGE"�d�ce���#��(��Ex�;
PV,��A �#Q��1D��@��ޓ��Q���H->v���D�HI��"��� @ &����O�CB���	 �#*��(	�C$��#2@�AQJ�H�!9	#0���!:� "P�(��"�8�>�B�3�8�$�q�#Na�I$	�!���aɘ�AB`L$ ��� @������ P� ��H$&x� ��� ��#�L𜢏!gK��@���" \�窃�@'0��#�a\ձ"�p�"�6�� 
Cxr ���h��H�q8A ��H�{'A0�"(�eN����[��"�9���"�0�A�1( � .���q�%#�=�w ���1Cbz <��`8HD� 0��""����I(}<7 ,��#���ܢBp�(����9`�B8
�0�-C6�i@A�Y��0C�p�)G(=���HIN��Lp���G9ēAt4t$R�hs"�P�� 4�VL �@ VC�p��(������n2, A !�9dBˌ������(P��SKAN$� � �u}��B�@ )<�����a �W��;袢E�d8
<��(_�����$��Q �! cxNxW4^�e ��p�#rC��X��0 E �q�0 DD� �8�@xL����C�  ��x�l ��[�&2;�ȸ`��a@�@d1d�,����0`ʓ�s�Tx2����f�����g�-�]�F����d���a%�j&4��xa,7�a��c8�)�!J*.�2�a",�P��X@B�:��hlR(��Tb� >w��U|�Q�Бq$����HB��cLP��0 �'1�K���,�œ�/
Ƭ�Pi���)  X (�x� ��8��F���;�1(��4BX2����
J< ?�ҨGGG�:�>Czͤ�]�B0� @H�IbD$�X7�=�M��x��KI`�a�GK�#����xy8 �{l�I�b�nC�c���� b�`�1^�"��9�iL1�#e�����
�8Q������p�'x�A��&��>�q9�i:�����K�`Xp��B�'�� }�� �d��%5S�x�!99-�7p���W8M�ui9�1���!1���<C��4�>V@�m�Q[T�RH$P:,� r%RSQPG�!A!���"����q���T�݊a1���ʁ'[e ��bV ` �Hp��! 1
WD� �c�X^�$uA�T�@@8	c ��ڒ�x"G,!�x
����� @Q,+��`h\� b  aҳ ��iɇU��|v�q��Lh!r����*%-��Yr�c2,cr�%��+���=�4r��9�y6ɰ@GCK�kk�AHI ��d�9���<(6*�؍�����d�B"!8�$�q��p���II��C1�XZ<�b`�LB2d�4(�У&b�Q,��Q"}v �4��9L�,-DbA��zى � �H � \nj�����Q@	`"3B	�DCII�i`<�a3$Gh) ��X�6�8�:c"����hP �@��BMD��Q8ӹ�(O�o���X�"(} P!���01#'�""B�\f�G�R2�` �` �0A���

7T�� 8��`A���$��!^�ev������H(��/�`�e�I�s���p�i��`ɂsdd�(�3�@�U;��o�q�0¡�H�C�#�x:�(}Zx�S3��i��(�iIQ*XFha&L�`r��9&�������(�#��8  �� K<}����L0l�!D�xF��td8j%z��@B �b`�l2��D ��"��$C�p55ؠ ��f���0�+�5�^�Ĕ]vs��[�����g-@`��� 7,F����m��%C�`,S�0���h�,�%q��-"�Bd��Ī�j*N8,��$;B  h$#��K�����Ǡ$G��ǐ�D��S�W鸏5���������INP��@Q�_'H� 0|<>d��5T\Fc�ò�!;L��`*��S��a��qDM�a�ѣG������b1�L�q7BAB Ǒ��PZ:��qDǐT$5
���xrONG ��09_7�P	   �* �ɖ�kBD��,`��##C��'ñJ���I~��{���K"���*���GΔu���=nEC�n�b � �a|���`\w�qA�-I�pX�"
 ̘��e�� �ΐ1$#!���8A ��#KTt�@D"D$' ��t���\�
:��CQ�@EAI��3BF�e^�i�5���()��a	���?��B�H������Y"��" 
�����;�����F�d,��q�6G04(C�A GA��sLB�d0����P::�	}J�,`<���E��P�H�� J��@�d1��Ρ�a�g�G`%���@( �B�^��<K�!wsc���P��HN�%6 �yÌ�-�[���,>��g}�k�J$�(�S�A$"B� � �X��!d�Ì��(�R3�b!���� (����2$�
 ��|�	!�a Px�g���qG�f�1` "s2:BCFG��!-/�<W�Q�cDΒ
ǷSѲ� ��km	mB� �#��]b�T��2j"#�#"3:@�
Q#t4)-=r��1K�}J�I�Y������Q��p�ǈ���>���Ñq���aI��a2G!�b 'Hh\C1�8�$L�3@E�m�:wT0 ���Aœ\�k\ xV] �k�e:�� ��ʘ����W��	?���!xjA�<��d���d:HD�@J"��`p����ܢc	��(�8�4���$�DB9�@C����# C�����/��nX�x �B$^i���:s&4�q��J��l��l��8�����X�(���F
 a0   @�D@D ��2Gm��(�u��瀜�5Z�ur"У���Ɛ@�'�ǘu���(�#�!,�Hca��Y
���9��0`ItD�K��! OB�ip$,��7Q  c����pQ��5\�Ē1fH�PS�8`�ۼ��l��&=D	P��� ��]~��<H�Z�K � ��) ��!�6%̙y��;G�ėT��_��7T�%ID
P��b�8t���ܡlb))p;"��p�*>B��@ � 2
���� D�TȰG�N����p����=�@EK�����aHˌ������%�$W;l<D��Vk���� 08  
��ТG?��NΔ�,X'������1(̂}�ǒ>�%3=�m:Z� �!�8��%'Q��)�pn���rr2Z��X
2�)�tx��rfX"���00c�%��a:y��Q��&U=V���ݔ���W8�-,K
�Llұ��� Hܡ�B���ߧa��0C�8�s @!]�HA�'b��l�4%O���� �Y A��3GD�� gn8 �DhP2�"��R� ��h�YGY�M�����cp �ǖFzw�1���P���v�r<�>@�0B�f�:�Q1��� F�Tn����]�`�::%@x �:n3%C�AKFIN�6���&�G%�( b� @G�j:� �u�
"�Kw���,�����!�Mj@������>�D�Iz\'R�P���,��dt�(Jđ�MK ��"%5�!k(���C���ѣ�ɹ�=�,�8z�#NS� +M�M������5) d\��>k�S�r��1#�3��Np�C��~6Yy��x����o�]�`ɀ1�b1�`����)T�2���X�4/�Z�@�:�r��� .T �=��
�a
PHv�JExDB�(�!�AT�է\�3��OΒ%���,��,�@M`��@N��H��A0��0x�� "D P0� �@'q�ܲ��i��htf�Xrrr��E`�]f�PƜ��Y���'�r�Sl��RB� `	� DB!`  ��7
��@G�%�CJ�P��s�L��%�a���%r�f$��>Kj����0�H"�b���d��h)(�p�M��9�%�%=
�)��<
�p�P@4�}�;nrpY�fB�6�.*�?������a>�������G�{,�蓑1b%�:,�����cPQ�#l�(%��<�NU�eH��F$ָ���t��� ��J�sOp���  �)�Pp��Be�:��� ��,p a8��#TTL  X���#C̞�
C9�
&�(KrzX �A  I"� ��Ά���Q��N�G�	CI�S�L�&�L9�-�ADJ6���2�~<����ҡ�,�hCp (��FaPR0�( 0�f����(�̘2"���Ȱ$�bB�Ô�2��аŘDK���j��������#@�0��"���DZ:� S�O���s�&�(� PQi�!���>��&3�s/g	�!Z�\��8�9 ��h �a���"%Cj��'�G8�	V�s�)�d���g�
e @�:*�p*F�(�H^c�P�4��5��X,���(�A�A�KZ∴4�t�A�(-@�����8"I� �  A' D�/q����(T�S��L��r����1=�,9OG"�A�ن�U>�\$��:9�� %����Yy�l��^�_�� %&�Fyc֟!E��(�L�Đ�����F�`jCG�gFG�c�����e� ���8C��<� Ґ�A��%
�,�T\�c ��0���S|d� O���N�ZS\�@�"D���yf������c��������ϯR٥b��M(��|��s����	S"�Q�1b��{m��I��B�����+>'�D��c2  BHJ"A8����0��/�,�������;B�����1"��$"�I1��
N��C�����0� �aƌ���ǘHŀu��2��,\�p(��x2������"d�d � �_;)@B��=�3`y2
2���(�'�c�3�� 4�C�1�5%}�� ,L�X,�aJd����`pX���őS 1��%Ā5��30��l�E	�0u����L�&�0��x��xN1���"(�pD��cN�6�1���g��c�[��%&�Q�Y�Nj��OPی6� �-�,�f�)B��k"�NbT�$� ��lܓP��ñ�`Ah��A$��0�O��/�1dx,��X,J��0�%#âDaI@� @@��a��N���'�� *��cʄ�<��h��)z0��Vx�1�y#=�i�Y`�1*`�1 K��`,�� ��A�#�jJ�ac30����)W�����dS��Q�P2-������p���� }�(	��Ax�D"�a
j"Cz��PN�I��s!��8j%g��1ǽ�;�X�D�ౖ- �:�	� � h1X���4�䀆u��˄˂�4�(8�O��Ч�o�	��䬱����g�G�L���H�a�EE�eL���#�C���7B@�q�X;0X-B%�@쏴��B9��,�H0��` ��f��$����a�����@BD1:��$�!� @���@��B��1L�&�(a�1s��-�pP�G��<�&b8"��ID�8	��x< � @0��@ 	L:$��  �AU�y�� 8J"9� ���R,���1�0"�f�âD
Z�@�-B" 2Ɣ$�D�HKF	$�@�yZ�4��Ñ1Cq0��L���BP�� 	 �D
`��~��`,� ���O�gK��O�.3�M��>�E"�q�R#xzl�^��r��(�G���Lq��.�
D‱ p&@��$���z,!(��	4�t���$$c��P�@ �8,%%��a���q8,��"" �	
(� p��4�v?9@���=y:��1f���haJM	`�(H�Y���
�U�9�t\%���ΙѢ����4(h��A'�" E)�k��_?R0�!���� ���Ó?9#���	X���0̱�"p����a̄�@A����!��HGE����1%���gYg����!aq8<`%�-�e�#i{�5b��g��ZL���)�X�n�bn ���w]�p�C�y�����ls7����1���^:.�3'��>%#$
"sN��OC%��   � ܪ
J @dp$��Ah����`x�n �e ��A��Y�G˂A�X�0=@��X�!@�%5��ѡd�ɰD"��IdD�@<��.�p
D$OL<�G��m�z!�~�����B�� @	~��@0�h ����r�ɩ9����p��]�M�'�pS2! a��<o&�e��7�+�s�{���z<������ ��G�x;S��q�wE���cT>�T�Jzў�({����2�G�hk�1� �@8G�6���Pa���O� �#[Qs���8'Y� �wD#=�� 
@E ���[}�������_:K�Ξ^�$k���/r�b���9���\��n9�Ɛ(i`2 ^�4�D* eb�� � ��l�(�ϜP�0`"�@����``��ʈ�V ��8��@LD �!a��N��G��(@�00�[Cż�a�Bj��Á���� ��n ��� ���P%АȰL؁hٙ8g�� �	�0��x�� @X�e�K� Cz�:Iz������Z ��+��6i_����=��Y�K'�ˁ.�	ju6nPQ��s�1%#�0	0d�/�F���OGGG���� S��,"�K���%�< �� �G� �Q
$����o����	�P0�*}.��cFII�n�],3np��\�y�� r�*��  ��5�ѭ� ��4D2��P 00� � %!D 
&AJ� �j
� �p8
#�0&1	!  @B�Q�]�|��	t0�GLg(�QBC�QP1œ3f��a��X<K��y��0Xo]W���3n�v�'e>YaQ)T�B�-�$������W@� r�$)���Ql�3��!�Zf� ��Xb�YX�&aH(���<55�AH�k.�(��i�%��������2o�sa�#��$�� �G�6k 0���!С&�0�n
���  �.�  ~��9XcN�� 	�	"�AXB@I E�I$ (�H�1�>�鈌V, 0� �� *����0 � ���� P�v� h@Ba   ���_�,� ��� ���`K&������S�Q	cJ9�aF��M�z�jO�����	���w|�O��@�~EB*jDj��MD����uxZ��Q�8�fI$�Ą����`0�t(�$1� �kM��2  Uu�ʉ���җ�r?�:C5;���-j"0*�ʐ����@�!����>}����GKG@`�F%�H
P2�  
X����8��� Q ��  �$>*|�@��I	H� l� �`@ �?t@� ��@@(��������6"5� D	űÄ�C�1@�$�;�!mf2��1�z��K&����ne�����$�ڨ��-��"=F�tD
JK��%��y�>یP:jj&a������(�UeF�|�a�/��=�����ͣ0�3�Q/q�Y�� m�h��"aP���T7�e��R�C�A��D͂
%'�Da�Š�(
 �H(+C���,!Q�I%��I� �w� :    X��d2�������d���w�$��H* ��� �&����Y�dC�x:l��$%���)5�HE�8�b8F	�s{dV�%! �r�h�u�R�S��&��*�1�$A�Z{7qd0
A�4�lR�D��8r
�!Q�`qs���H� �!9 44��խh�w���׋����3D6�q7G�a�C&d`�c������H���@��a��z��l X(��8:ZA��Q�B
  �$�P"�a!,� !���2	@X�(�X0 00�8"d��@�@ /�1������W�G�d@ ��?" �`3K��a	$3���t�`H(���8@� 1�����m�� !��E�+�`�p��B�� �DFu��(&G��-��X�����r�}�3�P3���@�C��	�&��x�������3{��G�r��!����:X2!;�i��q�Ȍu"	�cN$'�_G ��G�
A�8 ,�DMCS`I$��h��� h�TaI0D���!"� @A0+��0$
B�����a�,\� ���
W�0�F������+��G�IA��̬?��p"+�0@0��L�aBE���p�B �?�i{{����.�I�T@XR	��`��R�TF�2�W�Q�փ{��F0�A�i�X0E�F��eA�pӣ��a`�� 	e�r��*xOf�[�>����=:��y���(9Q�S�	��pDZș񻴌�#�����g �Ж��K���,0=R0��pf9��D�!˧[-D�AWz3���,���DA$��D�%��(�@B9|L`�O�4�� ��`>d0�G�U1xHV��>��1 x@�D D�י�p�D�.	�  rF�x*,=A&�9��������5N�����B�W���z��( �h���J2";�G����"�u��,Z���;&� �98�-����s�t�8J�\c�s�d\�Dnb_�� |M6g���ty��;���p��cX�eL�J�?Y)2�֌"(�á���:��cc 0��*����Z���� ��$Z��� � ���#! ��x���8J��X����(��&ců�b`Z�X�����WN��V���Qt���ī;���tV�)4 @���g4�j$�,���   ��.�����1�-��0`!$
qG�8���8v.���♖�:/l��Z&c3�i�1S�����"�G��8DC�E �&Q �1��KӒ��R1�n \F��Wn�o���G���\}p;�+�p�ĳ�EdYbJP@�P D���i�DH|I^'AD4)I���p�]  d�Kp�!�$��(
��"�"���p�E��(�  �Š��t0Ì�h�@d+BB���!"�@�V)R�&�F�}���b|�1�"UB���X��BM@7�N�a���@  � W�/>�,LBh��0sf�p����ӹ@n9,�C}���_����wv�%��h"2�5zG2��!�Cɜ
CI�!}~�1&c��.���1�L��\�2�Q  ��! ����1_�bp�!�g�� }r�f�A�E|^~�B�BJ�у��Ba,�丝�����$�� ɝ�B) � �̲���D�*q�4�Q�40�1�"$j�l ��
 J�Q@tX ,B�$�r,
��6�<Y$1
���� mL� Z� 08NH�:���P*� DVɠ�@5`@  0��B�̦�P��!��8,� ����	��H�Y!�{C\��)?|4�� ��Y%�j� 1�k�����}�~v0,��8f��"�@CKB�1� K��xw�ܘ��`2�Z�@�5%�b(l���M��L��n���,��3�*��	|ii��+"��`2y�h���t���� $P�S@��NB�������!���e�0K����&���P�	�" 0DM�@�tD��%s"@��5g�H���@Gaу�����F	�������`�@1�
B5�T��DB`|�� ̿vt5 �Vv�a"��������14f�[{  j5.̍�Hl,��^����"2ػ��b��l�#�p�(�*��j�����8�Ș�@$�P�]&f&�&���)�~qtķ���j��D�K��9|��񪯄	�K  �I��D(�@(��@1
c�B(�1>^>TT�c�,� ]ͳ p��1gX0B�X
<��P@� z�  :2,��k<�5�<B���	���2�J���N���� ��F� �"+ �C�$��C��g�m0	&<yֆ2Yf���Ba`�_�)E�/���Fr�w��$d�L@�h���\�.���Hzd�$���h��xRy罛|�/s�a�7�F����C�G�T0�i�VAH4T4
�)������ �7�w���x+/�,9��q.���Ґ�|A�qX:f$��N�M
 H*�D�#���EA��q8����/�4� ��q���XL�� F�F �B ��A$� %�\�23��ϻx�!k� .]�0���0�H�A4 h�1 D�"�=���$L�)��d�

3�`0].^�����,�^��;xC%_�U��z��u3@�F�BLQ̢ �{�=\�9^�
7�ń��cFx�� GF"`�M�����1�B B�0K�9  H�=,8�Pb��߶������>z��)�b�! ��ҀwԌB����@�顂` @H<6��,S� �B� �~��r�=Z�g�	X��1k��s�G���+���a�0��t e%�'x��\�@'k��E<�pDI���A����6�>m(@GŇc���0H�Qe�;��躄 $"�g�s6icѠ�$�R�~�qD������V &@���w��dv >|  �(�Q�!�4�G&�hR	^ ��PY�ZG'w޸1:��H�-i'9EId���?�������^��)�����u���P`h��:*9}�҂r�f�|ߟE����<ژ\�79Fp��
�6��&�܂�X 
::z�,8�G� �&�7m\�40�J���?|Оq�3�*s*~�>gY���U�>�bP4����O���,�>�r,X�E���|���p��p�)G�O�:F�Ԕ,8�.D�f ��P2�p���8ib����;^�ѠJ�CI�<�݇�3#`�x@HXL�`�ɢR`��A�!��,*ש��bc-�^�& �lBh�!K zH �ir �f�^���j97 �r恰��#� � �d(J	��y����S�n}�~�;�r?c�3��@��"~}��g���9,���K|��\`̛rNs7[���q�#Ƙ�v��.i1����xv�`�i4)�� �O~��5<�CP`  �[( �Dr X<%���9�0:�Gz���!�P� �H�"E��j�8ˈ�9[��p�		J�s���q�U���[8<��(9��._�)n񃌸����Wy~r����:&,H3㘻��gIN�p���m�M����
f��9Ii�4Ez�H�#qI�'�����R�!$a��L��K�.Ub��q	�UĴ)��P��@	%���@ �!Cp������R� @��c��0�����A@(u0��N���	��g*5�"F�YTH��g}�)S�An���I%t��O��"�����١�}F/�%O��9��+� "�᭱���k��`���Iĳ��c�I|��ƒ0 � ���$
` �� �]"�C`$c�&+c�l	8A��Rdy',K@Aɀ  �CnrH�6/pDI��[�o~έJ|�ZĠ�\�q����OsD��%��C�>%3.?Ϯ9[��I\����J���P"` ��#@�M�*	TR�`�PƦ����D�`�B�3# 5& J�p8�ɠs+�^M�ԓ�KL�wMx.���$�0)3�}�?j� �`+��oy�죬U����/�����gvjP��wQ��dl����T,�JE�:=&0O�i�fI�5z|�mj�19��i��	JN�%���H �����|�r�2�$'8@0�    ,	"J ILH@� �������:��b�$��h@إ�.1�lr�M�0LX�c��bΌcZ^�6�~��KG�>���g�GQ�x�7���y9�fɄ
���x���
OA��������aaD���@�p�1�A�0��:0�0$=,\R2`B& n����&d�<..&,�PXxL��4�1���[�L��b$t5�
�ŏ2��> 	�R�I3�7d�}���;Ah�Ɲo���Fk��2WI'ۻչt�L1��+h~�$@II$�y�M22����,�̓\��Ó��h�z���mF�4 (�k���b烍3̸ŀ>��L� �@��`�,5� �� 1.CXԱ鲅F�C`i�)c�/T��ӥA��I�#q2�8I�aN�g�5�6X#�q��i���Mn3���u��1b̈�����x�$N��e����$#�>K���b�
i�Y�G�>�iL��,�Q" �� �*!1����A��L���OJ�2#&4)�������%å�C�ı3B�=�K��r��."�%F <� B���Vm���g~�8�E�]��ڊ.�:	I@qt�#`x��-�4X��`ZZ��x�{( jjbfy9��.}rȑ3E��?��O>�=.��%'��y�aB��Yr�- # �a^�'Ƣ@A�����Il�dcP"(%��� ��
c�[\�2WY�(��eF�����EÈ-��2� �	<3���M��9��0� �9��+DD��B�DG�V�5β�8�ul�Pg��vN���1(��Qh�#C�E�,�uv��rJ�,T\xd�e�i����h�L8G�f�Q,��ad�=rq�} 
���P�kh�  ];-޿��j"  ��g�6�0�+�:��+���bB��� �����`τH͈A�e�@(���&��"R1�!�r��p�ĔR�J4!�_�p��g)p �Y0� pX�� 0�+�ɛ�� <�.�8�mb�Q�1������(84Ib�W�Pd��śq���4cv�f@���*wA�"9JĲ�69���]��̐��c@ ][%a�q��9��4#9�U4Jl��O�i01�@����Ap�A���G��2�8\f�9��)���2G�},*Pv� ��C�)�c�G�Y�`!a���@��!f�7�� c|�Q�dt�Ʒ��:�3y�ѣ(�EoU>q��kI��IV-F	��x22�D:�d$va,�1"S2r���~�h ��,��a,�5�D�~/r�牬ar�I  ���h�ɒ>�)0b�� x��^�<��`r���ƨ�IW?����|�8fcv8�&?˂��M�(-���� C|�C*<�P��'�9�7I��>��!"���#DВ B�&g�.��0qxB�CP�1���"C��d��HY�0l	�Qă"�d�E� DZ��0f��"�� �c^΃\dʀ�q��M.��:� |;�ǵM�2q� @ ĕ+�0l�4�;{��Ƴ��s�����Kp�!~�{��pO�ʭj|ad�����8�t̩XP�0�#ttD�ðϐbNd��9hd��	�Ȅ���Z�AP����!<�����d�g8�6��f�&�!k@� GɔC�x�ǈD��6[H �]�$��5�$���sl2;N-B�����(A�AI�  rr*9c"�f�c<FC�#�`�]�� LQƜe�S>�>1�H�p�C��b��C�q�9B�5.��:
�XP�#�1��u�0�La��F� �}�8�9�J�4g� +<�"��!9NX���(����0��%f8bB��0 ���9=B�?�9�/s��0�T,��}�Y�7�$2"�L�H"Hb��p��K4m��=�ǷY3M�3�,$"�0��  ٵ/��_f_�U�k����Q��s�">'�{��;X���b�L؆X�9f��1�>L�%B�1��,���y'�@��	��E�T��(ʞ���ɸ���\�3�X�� 0`P�� ;<���ai�p�C��  ���{�&+t6���e0��Ӡ���K�O�'А`�D�#&��8b�N�<��m2D�rĀ%O��{̙q��L����`Z
��Q>M�\2��-��qPȐ�Pd���S��,Ә��� JHH�C�x
y��C"��).�����qp���r��a�8K��`�7�f3{�!]��F�6LDp Ì� � �HV xf?��)�Iw�ҋ��.
@��"�p9"D$��Y�'wf*�i��j�t'SO&�VKdGK��AB"� �H8���G@I(� �a�fY$�(�"]ȑS �_,@P�<�³�H�@�p��9��L��&�m�H7���n>�
]4���,�1�,904��3�	�� ,pTJ��� �D,Q[0�![���4�I$26y�k�j*"�ݾ�egh�(��>��6N, v'Љ�M���a�ht٤JH��+��1N�i&P��
3�`��1���E��0 ��C�c�<�*��4<�N������s��e�8X!㡮��*�r��9L�� oU�1@b�)T �������$�{����� D�Geyݟ��T6X�:��gY��@�IEE���:EFC��	x
���B�+�%1���'@�`J ��4�0�O�).аDQ��YZ�5�]�����ڼ�]|� ��&A���&G�sظT�Q%9 �QBk�r�IԴlr���"�Ss�}��q��I�s�ns7���E�'x��$�����  �()��Č�c�W`L0�
E� |	�J�>
*'�>:S(�b����$"��J�#!%Ld8����>rYf��q.Qs+7r���M{�D`�uΐ��"�,j�kT���P'��K�h�&����E0x;&!F�]sq#�rn1�G���F�V+�\�[D�u��kE@����r�
0 �P�Q"sp�.�$*���Q!#=� � B  <� �A(sK{%� %Z��&��$�Y&�}F�f�$M��`P�Ӄ�(����h�y��B���X�ð�	,�ܦb����!$����GAÀ�y�eZ�h	�,ơ�a�:�Ab�E��iB(�tX��AEǇAadi�HI����E�!3�	iQ$��c�%���M�,�in �`�F�ȍ<�g��44V8�Y*Z��/?L_r¨ �DB��=3��x	��]�ϗ1zg  � {�O�H:���u�$�ʊ�n� ;����N �JC ��`�%=f��I � a@"B(`�BMI��b&
��
YP�����B��  �r����#���G�,��p��<N���*/2�A��|��	s<�X�`AIAa@$�Q��-:rXg�=6)ȸ ��`��XZ>�**Z,AR0 �n���.TC�=�v|A�29�H4�r�5jq�H`����67��I����@��)Y�<�D&`��	����*;h��pF	�>�0�<�d|�f�}<�$#���mڴh���(gQ5�p�-��w���� @H p����.�&M���ݙ�w��8�&C�.*���W���'�K�|"Qل]͂����i  �!� SQR0��$@(�%� "	�(s0(�� �Ez �c��'b`@"a!2 XY@,@��+{ nʃ�.�)�0Ф�?F�*2$x�%���5N3F	��&G� B8K�8��A�"2gF�����aD X  	��V,I��Nnݶq��f�d���Ǣ��)�l��G#K�5$EҌP���b3�)060iSħ�J�yZLI9g�����P�c�"2&BE�B�G�+z�qt٤��9����.ѵ�\b��i3eȔ6�g�&��-\Xh|7�w��-��x�&�ji2��S��>���D @�#�H�ƞ� �BG@���슐��wD�d�"M0��J�1@��gD"�a�� ä�y2O�%1�Dh(5.�0�q���  ���US��G�#�2H��Ó��d1i`��f�Q�ѧ�:p~خ�g�^�%v�x


��ܮI�NƐ���&DE��v3ٝ��v߲��"O" ��<��n�D�9��vq�<�C��s������u|l�(P�4���z����� |<(�[E2����M�h��@����3�4��S�K�>�`rt��Ѧ����ǹ��LQn�<��8��T(��a*&L���1��a�)���l���7��)+kT>�{q$*y�?z\O&=�̚��
�xT\-T@$or�&�7��W<y��-�;:P�Y�QS.ju��~4q@%,Z��� �� E!f��QOI�~��A%(0E��w��)h� ������U�pLY��G�� <�!`Bn"��,#0C��T���� �0jv�K��t�i��P�	(1����}<����T_���n��r��( �H�GJ��ޡ�3l�*א�0�ȰD�)�P`�3^G��S��#sȄ��<��M�<H�t:Q=!w�c��P盡��E^�!�2� S��y~�#Zz�SS�g�wѩQFg�#�_�e��s
���EȋL�$���	N9�CTL��p�Q9d��6C.��<��8켍���]�`c[I8��`���D  
�   ��HPRR���� x<��E��'�r�>?�  h����!�,s���H�gPW$Lh�j��p�Y��GEFa�	:d蓣��3K��@P�-*daA��0 �Sr����Έ��#�Da���!42ڻ!0�BDt���Y*�W)�)AAp@`|�KH�`2�I!��M���O�s�P���,=~��`8� }Cst�
Tݒ  �5|��APc���h��X�(p�d�I^r�&3�I�8Ťʘ&=l4V��
��l bsL�5���F����a���B�ƇgHB�wY `���%��r�1�ciJ	@�����a�&�-��!1!�'�"�A���T6&���,��<-T�|�	/pws��(ˉ���><E͂�J���F�¬�z�࣭�� >R�
�A0 <"�h��+�v~j�j�֧���T_�'v��͟���3z?��E�xK/��#&��Ƀ���aD�.2eF���� e$�ء�g%��Ǭ��Uoe�BEG��P"ZZ��g>���y�`���c�!!�s<   42=(�:&6
6�w�P�H��#`A�hP8�X9�ސ�	��x�m<z�p([��@"F�DF�"��*:�)���P*�PA�K����:U<���rJ��QH�@�HdP��}>`�5	�P$ր��#��e�y��#" ����+,�Ƥ�EB	�
<�X8�@��p�AP�3˄1�l�8e�E@G��ķ�J��n�ȉ��!�1�00 `@ �@ !	
���!! �4�vo����(!� I�cL�g�g�p��?9�߄Fw$8�N�U��"	22!�o�c�,e|��$`T$t<bx*���[d��Ax��Șr�=�T$
d0s�@Q�@@  hh��"`���@@��&!C�:S��i��2�����(  1r�P$ �3���?q�E�4LZ y��0�!��b��
��I���I	 @R0u ebc� �3O��p�<%< yJ|�J`8��PA�cp��%��9ΐ�r�ǔY &���%G�!��O3�E��<���c�� ����,!6��ܱ�>O!�&��Q�c�'ls��C� �c�ǌ5���[H�(�!( ����d ��`<Y <C>��I��vn#�����'�������5�����_��~,T�����[L��
�E,(�J�Y4�9e�
O�.BJ ��X� �,�<��d�>̜C�1kX4(&1> � G�  � |�x��m�3�% 	� `��t���)R�9 1�	�d( �h� f�9����S9���:�(����YTBx�#��q�Y0	Ux�L����2g���Ipr��
�DD��9c(S�4�0��I@ d2 N����%R��e�����1)+T������y�c^a�5����B�,�2
�G�SED�ą��$�
 ���F �a�����`�������g �����M@<9<�D�`�0B�xUC3  �@s`)�BF��]\f�Om01Yjb	,$!��e}iF���cs�rDߪ�4肁Y��FH�"��5$|Zh�h������#�
 �~AQ  �3��Qr/W�X���D"9��: �P�L)���W�����9� �X�P}>6����.�y��  )!�BD�	C`lr���M"�O�2:�1��(�ɱ͋Ԙe�LR,,�(L9b�
�8$@q���T�p@ڜ  `x86	8�G��'e���q�gx�&CJX��/Цϔg��!Wh1�G���A�����<
g��h��h̲�ʐ!/�A�2EĀ�J�
� �Ex�S�� d�&_���d���-ܠ��"=�d�
f�@Q0@P�#'?�� )* �G�o��S\�2��Y���i�`p<N��%.p|�w��!�!�C�Ba3K�E��B��� L�  ŗ�� � y���7��/y�gI����c�C��$4�i�1L�pQ��z�@c�@CQ� l�~ ��C��\� `�e�=���T)���  �.)   o�g\�a�GL�S$A�<}D�'&�U��c���a3b��K�6�2u2D�!�4ɱ
b�*���!c��0A��3����b��!�:/3�J�c�TY�s�!�c�,��e~�"?���Q%`�F�<�9 ]l8B��l ��}�r�L���1�P��̱�'�S�#f�6O�Ɍ�5.q��	J*��Z� �bH� ��G[$��@  � �� "�0h2$����FGE'��,9�0���r�2�o��o��<ҵ-�"�`�KA�0��ŦDLJ %O�6:&"� �@$���#������=�w$y���,2���2���� �@���1�- f9�x[��G#�� � 0 >�2:�{4A,P$b�c����Q���'9���@� >�W��h�o�� U�d(�A��
�*).A�фRD!�#��N����(�)��F��thA�#����p9�$���
YB>K"K�s|v��e^猟B�.U^g���t���T�"-n#BX"`�!"EFt18��
������TA�  g���8< K	���w�u �l��q�!����-J�bʐ�lq�gY� ���J@���D ��N����8 �a�J��,!
����.y�IIBִK�U��Ʀ��eB�r 	 �Hh2��C:dȐ@�Y@2�"EC���B
#���`�iQ��7P�����=���\�!�)ȘC�*1%�t؂H�c�4e[�A����MB�0P, .[
 
@�0
L�)pN�9,�Eà��"uf<��1#Z�8@�� ��Թ�/S�l�.:
IĆ`P��y�$!� �(hd	(���:眱d�:sL8'�'E�'��?�3�0>�2pPP�1�9}��-6(�>"�h�= ��1&$�#��c�Y��_��/�F`�#�Xf:>-L2�8�Uy�	3@��e��s�9N���3�k<�?�"K�L����~�%�r_d��u�b����'�`<�%�(�!,�  ��
�����ЉP���*1_D `��J���Y6��UV(�10��"]LI����IᏧye�}���C���	�'��\�u��VpH(`0����PB�1��G��.,�(ĐC�D<��:/�]�������o����F�`��\�H�;���B(�*� v}�g�\� Ĩ܊���c��1#��"�1�is�*f�y��"#� �0�m�Xd9F��ȣ .U�1r$U�Yg�!(;a�=~����y"T��3��\��3G��<1����� T&�$^��<ǿ�{��qB:t�̰�H ��a���a
��.��9��>@ �c��>��	�X0f�3� "&����EB���!1�Yj`l<Vh�����E# ��B���(o�^^�ǯ�n��T\!�"�9+�]X�1A(@�    �`�(�Dh�4�x��P9b�C�?��� a��0�xt8�*qA��@�ȧ%��6��I3�	��b3��9ED�X�<E��22H00��Gc
 �`�J"+����79�6�	Wx��9?B�D:::��C����@ ���̇��E9 
L�3��Ap�0��H ��|�/�(����.s�xx�l#Q&C� h�B�e�6w��b��(p��I� �q�0`8$����A�h��0�2F��"d�!�`<�l�Q! N����<M�&��G�%T(�!C�>	>>YTRT�p�% ]~�C��3Eã�}<MBJ�Ǚ!�
e�X�NB�`
�@n*.}��P�a"cR�(D 54���'���2xpx�Kŋ&l2���a`, ��eE �����I@`bRTxs��@�b�OH�&Y�)�G�
��|����l�:O��;�M��C�n�Gi,H���F{<4aE�&��"*R* (�#d�qI�y�L��"�R
$Q�  e�=�e�>/���0��pD��bH(�PĤ9� $K��P�f}ւ��1@!�9&Q �R�0P�!��sN������	���!���a��/�#�CG���F��B�����C@�q��ќ� �K}  Ld}ֹ�.[���rF���,Bb^�SD��|u���'��1�3�)>	��%�@N��25��9"G�	��y�41� H�0(�]fy��1O�s,v����̒@p�1 �4tRR<b(<2).SRDD��y�yns�l��W��5fhQ��	jNp����M6r��Y���@0� V�G���aRT�w�a�,	&).{tx�av�M 0��������>��P\�P�&zbR�8�����h���0�.�Xħ�2[��1	�8¥B�0�<YjX�����P �c�����m>��P����g�P!0�L��%��y����}Fp΁�4���1��G !��d���c���D��`"<F8x���9; �!��x�-0�&����0�q�xR<GA���Ɣ#Z�)p�1>"<5���x���BpP@��Wx�G�s�2W�0�P��1W�Q��A8�>����L���c K8`H�,����T�`2L�R��'�@D0(��%z��a����pL����\ʴXDgL�=69M�	��I����٤Ob�.0`��P c`��  @�H���#� ���A��f�Y�4&<g��E�Q�x4 ������$��U�,2ָ'��(!6��"b,q�R��ߊ�H	@��dX"@���F���ǣ�
�1-f�(4@0 T
`��$�c�[qȐs��P,CZJ�1tD�̺PC�a�-��3�C���ʭV� �@�1��V���A RRt��̒g��>��p�c֐����j�c���B����e��4s<0�w1���<dC��  0�j� t�|	���{|HJ��`�&&�r��a1d�i#!�G��,aCx���(��D8�ti�"��0�	�$\l:@��!�������q�K�C"�P`������$ppD�D� xt��<�G�<̀7h�&������)����q�}&��.�%�  FH(@ʏ��#@�II���g�1��n��r�%2�p�d�46	�Yg���I��M�&iB�F�����$���H� lSb�)�x����E�0y̘<�$��1���� A(J���ɱ$n�#'��p	�}, s �@x,���\�C�0g�+�
�#����
Bp�`k2  �fGFf�>���0ޥG�9"z������$&�M2lQ��0o�t`T��E�:���p]Dѿ�*	���)9*tx��!����A�>y6�cc�h���6�0�!:.MtVX�!)�!�k����Yd��&e����3��e�MޡMB�,�0$E  ��%&�Q��A xLH �=�1�T�1F�	�>OSS���qF|�ߡ��4���@0IA�Ӯ ��A�L�����'����.7���@oP!L�����!���v�l�E���0H�" A�E*���!��E����9E|0�:(X0���J�R<�:���4��$�Ēǐ!-��p(���u�̲�L��  � ���!�p�$`J)�00�1Aq� $�C���pPRu���2�١�-4vY�� 	��ӣ�f�"���&n�a¼l���Oa6�i�6&��T| 7`6F ��   *HUL ���*<���� �Q�H�������h�!��D��[��h�
<2<C��
Kd1a��of��f�[��r	�7�H>ct#4Rzp(X��H�����'3�m�K
��R#!���b��<�kY�5��	Y��qq�7�K<�e�&�r��x�>�SC�eEP� �#�����P�ś�6���G��׹��g�ʘ}�V��a@xd�)�|�3ܶyq��F�8i$�d07p8Y�-?qɰJ�#D<>�/�G�)�#�#�0B% F"Ƣ� ��{��Y<-�B0DM���Ca�.j
���@F���  F^ײ%� 0�  �� �pE��1�� �[8��b�E�pYC,2P��t�h�l)p�pB`
Ã��(�1�@w�v�O�!?�>/Q��B�hТAD�*I
���>�9�a�IR9-�F�e��5�Xؤ���i�Na  6Y L@$ �G���O���x�69>�{|�k,�v3���>�&)oҤO�+<$�F��&�!������mxf9zN6�2n��12�:P�g�:S��vS�JxL�lf�r�	�Ygv�ý�<����� ۜSl�� �	�l�`(�����H|�����6�]��bҼ� D"�aiqX������Dx)!&!�_�&����\��
�M/�S��x���E|Z�4L4j�Ȣ�û�?��c�� �6C`�ٻ�$s"����㩑
c���fX�;T��c�&�0�rD�g�F�:`Щ�� )!\�S\�}�{�d�w,B�E֩pTp$�A4�b�n0 $j	� \�:?y���5"�TF�q�@��R��9�R�_�P�1�0p�0@VbFBD
`�?��
%�)҇R���ه `0$E|��F�a �I��0����3������|y��N�$d����I`�  2���>kHP � ����0��5�|�Ƙ�$��e�"�d�iӟwB�U�2G�>;ԁ<f�6wy�1"	:+�����}R2��`T�I���D@	�16	2 ��,>m�	� �`ʜ�Ó%刐
gd�P���.]�[MG�tT첎C�q��67x�Y
���{%���  ��>��K���Cc'�V�L�딽Se���ar�*AáéREr�����f�� m�r���lFK�3��%B�xhL8@c��C�a��` 6C(��(@Pː���m-x�0@���cp�� �u:Pf��\F�k��k�D"D����(1nuYLc+^f��c �T��Q�q@�P" �l���-��/<�����s�16
��:5)=���f�9��u�'�"�D���,�{Ԏ1N9�627�i8RD ��> ���[<�&��|�G�V��t�	mF�Y��q�"��(!)>c�� �#�a��S�YB��<z�`d��2G�"Cx(�� `DAx�DɃ�A���(P|dQ�X�GF%�������a�u���S\'1 �� k, 
�B(�� `b <� G �6�x�
C4j�DD�\�q��;��*�(Ð�"���Qf�1)��4���ab�mt$ƈL�q�h��Hإ�<�� ���OJJ�� @! ���IJ��T�DBG90�`WC\_<� ��!D0� F���#��X #ā3"f� �g ��
!� �`0<=Kx��w�x.�u"u�q�}�\e�}6p���2�J�".���G��9Jgx��Ҥ{I;I��Oq��o@8D�ㄈ  �a�2��a ,L.s�:�e�S@V0q�6�"2�T��QX���C�DbD�C8f8�D�D&�`�!��x�@����$ r�X d �1� (��H�� ��f��cxr� tf�1���"&3����0{0g�p��5:� (XM"���@ bD����,���)�|���|W�
O�5�5.#�DGE!� c�1"V8�M�0ˌPa�0J��<���*g�� ��S�æJ�.2< �
��A� @a �"("}N��1!#�0P�-�TD�7�'�HMC�z�	D�&BV��T�q�M��0 ��Ɉ�U�)�(E��NX#5�QD�g���k4{
hp\�9f�a�EB��f��APt	]4 �<�6@�ѽpV���Iк|�]*d�R �W��1$���y�&}d
@DBR4FV���>?��SsĄ9�s��<�S��G�x�d%&F��!y
6!���2.cJ�|�eb� \ft8C��� @ $�� ��!B!π��	��ŢOJ���˜cΰN��=��� c����D   (<  � �T���2 TQ����!3E�20O��B ����h3�$U4"(l�$)�8O�,)�XFQ�,:.�$etRb8D 111����P1�ñ�e��aPf"��8�, DjJ�T r�5�	!@B H�f�`¨�2�	b�1��zru¸՛�1Sa�qD�����p@R��&1�̛J����!5>͗X�rD��n�'�8!mz�a҆����C����q.C�络g�<z�4x�M�|�&>�X`
@HѩP�
0,8  `��6�t�9��3��T��@�6' r�{ ��6��sT��� H����Т&e�9&�D�lr�L �"��@А	��"�$O���D	�]��`$ 7h��ˈG�r���Ȁ��B ��IP �H������W�y���c�6��M_�g��5�b��٧   0	g�B�M*�RC!M�+�1HN�*��<�=j1O�0��T���H�@�P"��(� �1tL�q�cGD!����aJ�:a�D���� \#B�I � � `@�d��#NE�s������@8�
'���(v`u��  P8Ǧ�,�5��)A�H� �)[�A��NlS_�-�����c IL<VԠII�8\��"�O�*^F�C�w���M@B  Px�3R��`��԰�
���4_�1o�cZ(9gz����" �X (13@:(PpI � �)1�@Ą]xDL��]TBFbV�� $�D�pd��@LÃ��0	)9 ���Q��׹N�9�b��1G�2�ʪ����ZF
@�S�WA<G��	a����?�k�p��k���Cb�铢BÁ@�� ��:�p@�gDJ��16�:![�ȃ�0�l�&*��Ą �A$�( 01e��8�{D� $F!�)���Ǽ'{O�%V��p]$b�I  �,sA+F#�H��X��:`�9G�P΀��LQ@#$Rb�1U] s(i���/!s�wx�3t�c`z$���铄��ARt'�6e�c���e�}L4�q��J�_�Cp��>��Q�����fDd�2�c�$��;Ϲ�8������B ��P�<��Q����l��c	�.cj�"S�=2QX`�}^!��M��
�(�0�@��GC�`���$0r F$��0b&L��e���"p�uL�x�+|�5����5֘� �PX� )����-��������|���c���k�q|�6(3d<ܦ�qQ1�p8��a���	Pg� 	EC��"�"�@������������,|V��Y
�GÄXcJ�Ā�� E! C0G��`�eH@ �!�>5K:���� DÐ	��1�&��i�A^@��^	��4@t���$	 R3�*� P�`�YaD@ &Q`����f!�$R�L2�Z�dT�� z12
��B'" P`�u���w�)�R��"�	���~��.ۨ�����i2�?���.0A�<��(���E�7��90 �ާƀ��I -td.D���09�6c�x�Sx>�rF��q�:8���� d8���$�!2�H�rʘ��D�9�y�
��Q��g�Yk4ɳO�6y,�3�
�Cj|��\�U|BRtR�	k��e^�����q�%�I,��:wQs�M: � E�X*DK�B0"`RÓ�uޥΧ�N�����|�Y��A�g�9Q�E����0@�m(p�bc��b��@c�<->�x�)~�_G` c�>*��̻0V�.�<G����9:
9(zD��䀊[4��C��,% 0��K:k�72�A�* ���SТ�YB�� b� ��0�Ι�*���a8�d�`��L�
��1�  ����@�8g\����8g
 0�a�B��LPh�� !q�um���]��D���C�H�g���k܁?T�*�H0�(\�%�S "�>�y�G3���p�S�K��H�H�U~��#�,��.�I�x(DS�#E@G�l3�!Ĝ1��O�1 �*6Y1utΘ���h�A`�y>$F&� ��Ad��"P'�˄� ��>���!�(D��� 88,dr�xLx5{<�Ӭ�,x�[d<�a�:�;5���*CBH��	����� HX$�`J��8b�?��G�7��5~��#4 �*ˤ�d����:k\F��� ��c4&�5�8N�2�I��L�9t��#�e�"S�� ���8�0���� ��&(�*N�`N�a���:� � ����NCÔM�Т I1�jG$B��N�p���;��r�Ц	�Ae8G � �8B���<kqL��L�!�3ΐ@$%��Px4,l8TvϹ��π.l0�!DN�r����I8��s�!1� /c�Ojb��M0Ij,`�������1u&<C����)w�J��#fШR�7�QcJ��x���uJ��� �"s�E`�O���a2lGL@�������c����P¤���c 0%%�r@� :&@��!K�2.$
�L�@�p(�h(� �\� K2nPs�+<��)�I��;k.P  0	��  �"����=tt,���1ﻯ�����%$t�>�OR�m��b�"d��\��k�h�"�G��P�0�@a�,f!��"��d�AY!<<�@rTL ��! �P�1d�!�4,� �aB!:� &%*O�6�a�1@ .���D�$��D��3 1m�ug��c�a��} �}@V��툉H0��p��DR�B�I�0Q8gH�ȓ���1}d8���Y���( ���}��"�L�Ʋ�w3�c{�0C��G �5�`��Ƚ�D�����������q����c�>cb4�b�/���?�o��#��h�y�n� 
%"8դF���:U$�01����H�0e�,�>&
�����t��� L�1 @�"A���I�Ȑ�Q��$%Ą�Pp��Y��MH"�;���X��
b�/3p	��|�6�2f�"_��g�<2<M��B�t��e��d9�)R|��f�A�@�t������ND�C�R�,e& <�Hx�h���Ai�S��"�a��0J�1�r�%�\���QZ��!�Fp$ȤÌ�`ڌ�T"eTO��B@� ��tDE !�n:�9!�+�0�F
�  � #
 �� �%�`�#UB�(I�2Fn�I 6:�@`^g�<'���N�`�`�Y��hbq�<�Iu���5�l��1���f)���q(2�u��&�3O� �<�FJ�k� 6�����q�>��a�=vɲ����hT�CG�$Qk�!���Ph�1��'��B�!e�DB�`1!���cf�!6 LH���34d2�!%01< !%�
Fg����O�6�qGƀ��\�$o�e�5,� A �a�B
"D���!>�/�R��o�:#��q�C"W��tx���vFL�}n��a�>�O"I�ijt�6�=B�)P���Q,���D�I��$�dBHJ�)}6Qx$QPQ ���'Ox�#!�&JFˈ�La P��`,��A SC#R2`��Ϙ1Sj���tx��Q���p�D�`�H�@# 
� ��1W� ���$`P8B1����`5� �< �|YF�X�2ӣ������U>�<[����.z�K�>>�)tHR#��֮�n�0��nE
��8����H�cf��  �1
����q�x����e�d�5?�
9�8��J��1�]	�,">�G@��A D�������'��hX`�)P�@ɢ�c
��@� @����D8 	"�J�Aa$`8�Q"8�����!%�}�u"- V�`�
��)-z��
wH�c<C�9!21<�#"�`Q`��(�"�i��>����8鿏�����Ҧ�(��q	�$m�и�;9f�:��`L<L��å�B�#	�b ��P�K�u�%K��I�9����"s�������h�D�C��
H���!A�0ƻ	��`�0�X"#�� �s�(gĀs�9�P�2D�$̸ � 0!���,"-���M��y���eb���p�l����D�԰ؠ@�+�p�E�t��}���Q+�Y�И%�m�B|����*OC�qa`(e|bx|Rf�1 @fX�{HFѵ�r���w� S�rDD����T�� $d�"9(U�2�
	�!
}�q���ȸ�d��0���#!Ó�`�`ʔ$�<!��`�P\x(2"#JL�$���ซ>��5��
_e�  ` �><"A��.e�,q��	���� FpYBE�GA��B�G�	\E���a<W�1��T�)r����H� ��k�������cH�Ybl>�HF�  � F��&RA �)�QS�r�:-ƒh,�a��	 D�e�( �pd+I� �����s��Klt.��s��� B�2fc2qI�_`� � p��A�3��Cc0D�A@ 0�}�h�Hf��� x�u���r�`��B��g(�gɷ\���"If�¡���$��c��ӈ�)���Er����_d���m}LZ@���8a~ĀG�a���ňWv���9������6O��SD#K���QΎp�!rNH	�'�A|�������� �jX��0h�"�0��G@%�0q�.2��3 1��9D�At	2�yއ0����p�S��T���	��Ax@	�C ՞�1�Х����F��>�2���(!"�F���}����'PK}bF��  E�aB��.��G��Y0�X��2ߣ&!aM����E���9,(#RD<! ����ix@vQ� A� 0�p�E8b�4959C`�|�wA�#1`�C���F�F�� I�#
�C2<�  ap���T��(	�Rc!"%'�S�;��l4*G��6)VYp:6�P1.8+�G�&
���@ QN���8��ܘ	��:.��6 ����&�*�y�й�9���sdpi�*����S�+��nߧ��s?�ӽU1f�w������{�8��[�w����<5�0�A(������5�[��l����}��p_a�u~�.�g�$"�f����3�
�g�Y)�#y�@Ft��4o�ŴM���\}$���6�6�-%
�����d(�2`SJ@���ȋ������ ��`����	�bQZC�qt���E�V��}w@��Q&a�WyR�pQ��������X��h���,�:O��Ot�o�<C	��E�G�c>�w)c��#��Fsg]j"�\��]�s��1����.�@���I��Ő2�D`�AԮF�ĸ`J9���T������5�!M�I��G�:���d�E�YN0�!$�q�AP�$��RF3^  �l1y��( ��bP����'� cQF��1!v�aB0�逡�;��N��tb"�@>�1RR'A�6�'�����6����u�L�a�M"6t�}�0F�e�6<G��p$2 �"�ݔ
�=-�ֽ��Ky�-���ɋv2Gj"j�R� � 0 �d��B,ܙ߼��6q)��c�u,V�r��K$:�vq� I*�l�G�g�x�&*�m/i�j��X@3��D�1Ɉd���`A���OA���	8
�},��}"wJ.s�=8�c�L�H�a �Ia` ��AX�e+T�m�[� �R���P� 	�=�`7AD����Gçb�w	Y�a�y�c��6
	c�X!"R$C�Yζv� �,rH	����{?
J���)"q�"!   �R(��!`R b�&ֳ\�������>��]6�E�@F��{��)	�1���iBGt���$�v� d,�  E�0-�cQ�"$�� V� $	A  ���`8B$�(`8! �B@��	�3�u�#(s��4�cS"`�&�s��2擴��x��1.%�Ad��9�}ꈌX�D��<ԁ�>���z�^�bT�'��������-� )lbB�@��� �,�ݑ lS%�J\�%�pI3g2`�d�Hʤ�a�i`(*Μ%SfD($Wl�I\Q�&k��H .)ȗ���MZ@�#��� ���G��̈́-"�,A|��P���6S,}����H �!�  !ptxL�	" A� �M>��&�XxD`dr�<a��쒁!r�&�8t�Y��E�,	6#(�]�g���� @<L�XbF�B&h�<@�$�GD� !�pln����PYb�'�P��y��G�g��|�k�H�QI�ë�npDa`��F�8�jV	 F��"!  K�%���@�  EI�!!Q1C�D�$�@� ��-���G��'ب6���<m<�e�-N��.s�h�p��8`�[x�_g�"BV�E�۔Q����@�7X�M��8d��Վ<O<���`5��
M;@������Uw"l"��� Tl!��.��p�5>�F�
-�hL2D��
@�I�Hj$�c�kQ��ӄ�p2�HW� |C�A�8$�S҇ �9%��b�"8:s��0��Y�y�� ���0P�@�( a���D��&B��`�����q���t��11��N#�%2x<aD��\b�}����= %�"#��H��8@j����а�ȓE��ħACB��A�`<D"L���Q��"�<����Q~�O�-�|�
X�p~HP�D� c�ȵGI�'H�@��S�i+���@b(74(H �AI �$�����( @P0�4��A!ן�^���I C�� &!:)�d�S�F�>c���9fQY$�I��±��P�aD�H
%�M�%�`*\b�	u�<Fc������|`܏���x���%S������K��]\���Kt�^�����D�)+L2J�����dK�@L�4����D���|ϧ�K2u�<O߈D%�	R�l��5{죔�}�@��`J�KK�B��)9K��6#.?�[�8�f���K,@(` �a�(0v�);}dxx8B�>�Δ��e^�1B�f@�E�q��y�U��x�c�����C��G�&�G�C� ���B�A̔��,q����P  �t�$I�G�Z�ID��� Xc�s��ϩ�O�E�$ �D��"!B�C ��$A
$H��`�2N�E���=�Ai!�B�� @(J   ������4:�0D��`0��J`��b(�Gy��4I3�*!)<�IQĠƇ�  2K$p��0�b-{�"�T�s�A��#B�� <1�L����+GԺ�F����B0�I�h�C�D����o#�S���6m�A
lCHA��A�Т�F��&@X����T4
!ӈR�:n����t�1�e�@X�ə��	��)����1�3F�3��y3��{�1v��Da�%�0@��8|x;̑��`� F�5� ������Ę<<
���U�	!��0:��<9֙�c�P`�g��)1�C$�B�T� @�2] U0����:�g���O�"E,z��B�9D�]^e�%���P���I��CZ�ID�$A
���$N   �' X, �J����� +")�B�D� � R  $� �q����0�b| ���"�'�e��3L�e�X�b��x̠�F�ƄG����:Yll�ȓ��mT8�.�?f��	b����{�P�~sSx���`$ ��f��'����~$ ��QN�F�9��N�:uVx��1�B���6� ��8 ��NA�(,��В�K�"9hq�h_�m��7�䠹��*Z�4�p<���  �M�`��anQ�0�y'��`J�ǘ>0C�a%'�!!A��9�L ���}6).�����<��<GP$�L�){h,�@��!�Aà�ʔF�����K�M�aԈ�eJ�� �!�q�!a ���Y�g�lq�>Yz`Jr�8��%(l"z 4(*�H!t"�!�� ��$ �S);���  � @�!�` $"���x��a5��� �   N��p���H�$il42H0A� p�BoR`zT1�3�26+�X�0F�>
&�!���y�',�����i�>6ud|&ؼM@�<U.��$���_�Oҟ�"0�>�GZ`��#! 
@�ȑ�"��g`��<H��K�E�,�c��~��-f�0h�G�����O�
Yr$IN>��R�͇qK�p�+-Y�G����N1%a)q4�2
�(!��,���3��:�%��%����-*"����AYI4���"$  ĥ��2S <) ޸a�
�쓣̘%tz��� (����K�.�F�2���1� 2K���	���
�S:����(0d��=rȄ�����D��㓂�[�4%: k��g�R$�]��dp��:mG��S��!f(F�llT.����3"�
��(�; $k�	,iIC,%�9�1OED1t4,DB`�BP A%��A ���=�4���5*GN4!�blztR�<�*3�F#��0c*� $�� �"t�8��r��	7�� �<wu	�>��q8���$�	d����
K���[��M�%��S|��
� �C\f���N��i4��ߧ(�`�<�C,�e�K�=���B8�Y��>Q��ٺL�)T�%3`פ�0^�rM�dQ�)�g�����'(Q�T�A8r��0��S��Ҳ�a��\d��&^�+��9�R�1����D<=<L�|�5���aL1�b `�Ť��Ổ)�"Ӈc�<�F����.,N��&>��c"p�K<�e�ј�F�����K\��ȱƐ._�TR�����.��EJ|��{TQ�ЀG $|�.�os�,�:G8�˃Ԉ�c �v�-�pb(6s�"	�q�=r�C.���0:F4�s!�ga�:P��HC 8<�%�@EIA ���  : I0�[v.$�`�O@�����DD`vX�O�!
&���qQI� 4HA1� h����!׉�#R$�@�ML@�:�r����6�4���:��3�!SL���_��D��s��uJ��hP �< b�ej��0l�B����e��&�3M�e]�dX!�c�	2|�gP��4e'Di��14ģ����E<@�DѧGC�:��i0SǌIԴ�)(P��k�G�e*j:�<Ĝ5��x�]��1
�J$�8���������!� �`��",<MR":*�
1m8\ 5�$��aȿI�)
�EB(v����-sxH�L�`#�a��@vx�	6<&p�:9|Ti���Q�,1EJ�&*I<�a\�,R�FBP`́�� �c��0�� 1 ��0��3A%�#�� @� V�	!��"( "H@���8F��	>  "� �D!i� ���u:,�d�y���}6*U9(u�$G�1cT< <
.#R4�l�	) B�s(
%
d;�7kڻ@�O�c+������ta��H��4�G���D� �j� �X�AP0��j,c��g�|��0�}a�"��s4i����H#���"QRVAӤá4MUO����$jD�:��$��>�
!� "��M�%�c �s�1O���I��>C"�٥���eF	�pN��O�H�`bFp�� $ 0)���p�G���O��Ș	��By�22*	>)���c5zT�q 0���A� &�葠B���e�](�7�iF�=NӣE�J�MT8
tb��`0���Z:�eI`r:"	H�㬈���` ��� g�b$;�b  "}A!A �AQ@`E(��Ha�+V*��1����#A�A
 D00@�)"���������� (!��$�h��s\����XD||(�],*�0�%<2d�0Cl:f���y��v�ӻ߼�h*,\2::t&Np4�\�V3�M  . D�&D5�&�"�Ͱ��i��f�7X�Qa��L����(��0
�r",�`��.��t���c�0E0oՊk8�(pd4̙ҰF�c��O0$@�������Ч�F�9���q�)"+�5a A'¦�	:B
BB��<M��"�	q��H��qF��c���c  #0��<"G��朐*�t�2GB��M@�*d��S�>	g�$@y0	!�T����� Cd��� }��8�-(&!@��d��ca�%-	 E)$� �c�␎ +B$B �!�)���X@��!Ga@I PV�J� �p H�R(|
�D 
$@Ň���cО� 8�C�g�0El�4��B�&���7A`58"*}l|dtBD�FD�B��aP8�K������6R�Ec�[ch����rm��6k��� ���٣C�6w�=PѠXJ谋M	��T �CK��x�=a�.!&.}��T@�k� ��Z4 
���30h8�'(�2�8��څX�4,Ӑ�,azx�d�
Ap�I�3W`���<�y�C.`�`�rČ�-�  �a-&��tHeBʔ	�����!�� (@b���@�"��H��(�8����$�l��	2e,t�hh�h���@�t	���B��t�h ��.[L�V��ǓHN@qp�hR`��$��A�9tOz"��q,���p(��!�qr� B A#y{�B������fA A �@(����C H��"ARXp�� ąd�qa��  ��� �BDH�!�G �$:)(}$�!):u�A��`&DH00)*Cj���� F� 1H�4
}�[��i��=;ǡ�߾�A�*<�X�Q09��x�n{0!�"MǠ�Eq�
S��A#G�N�4.y�LL���ZQ� @��]����rM�PK�1�Ȇ�	�Q��X
��0D�a5=���1�
'I<�{y���$gx���+i`aA`"�$px�@,0��	����C�>-n�!� ��H�(8� z�P<Y8tbb(!1�	��N%KB���:��>��<�1�0)6B�,���%�>c*���4�`��&J�A2l�9�  �E� "z� ��P	@ 
ch� C`@A� $�b��A PZ C��(�j���s�`$��a"X��6��   Àn��O�,�%�L��.�[�Щ#�Ѻ2C=dZ������@P�||b*`b B���!Gop4�u�e8'�b\2����4؇�E�
e�<|wvb��sdh��`�?��a~�!"���h ����K�e`4NLc�e1�FG`�0�6	6��h&0�1%},���@t$:�H��`2�%J�I�]���e69���3��6 �����M"b�$"����1@��!"A 0xx|.Fܣ� 	
��d9�����#b!�cJ�y�&*M)� ��3��Ȅ*cR"bb���"C�"CBL|8P^�Stx,�Xؼ�<xѫ�8� !�x�]t4�?#�U�JLH�6���3��J"����a��$�N�� 8 I
���4:A�R���BG��0� 3G�` � �J1��$�4���k�(����
�bBRtgcbDl�+�ǃ� � �h�S��>	�X`�0����Q`�[s΀;��f�@
 ��$��D8S��g���2*}L�0I�d�$�H�u�;:�e�g���I(��"�b�/�~�=:'/kHl �u���LS�!@:*(<HKR���`� '*#� _�$.S�-9�� J9��`Y0 "@�0�.�(X��v��� �S|�6���^^8_��$�(�BD<�%�� C�@L
C@��E��)ET��DP80����c\ )E�$@��7�s��S���#�Ec�<˴(c�A�q�S��Ha[��rT��*�".�IB~�w��B�ީ��.��@�(6�w�4_ަ����i�y�#f�4
@ ���^ �$�@�-d%Vv����IBVD�Br�IGT�,d�R`X�p @�D�p.S%'2 I0�P��>b���np:t
����F�1��+�1�j9<���$<}��${�\��Z{���BG�6{$�� I�4g��v�<&{�SÁG��xNr2�f�6.<%\8| MD�i�=��}����&B��@a�W�Iz=`4�}�؛���u�gX�oĿ�;��6-��:%�q�ņ�f�'�6�;U�����a'nc�(7�40Vc�+!bڲΰ�IZ)�U�������WK��8�1�9�%D�cYId�D��9c^��מ����Ĵ�6��S���1|GBP  ÒHF�	
�3�8��C�U9+'�oRx"T�  *� *�p��y�,SdT:(p��8a1�D���<<- &�O@��)R��"� �B����F ����m�/��'g�^�g�:m��X��gC�g~^/�+��;��{��0)��0mzx���$�L2A ��RQ-��	N��R �F�I��� ���$	!�8<�� 70822�UK� ��E�H�q�)|�0
 � N�8r���IG�Ñ %��i�(v�N�OK࠳G�)���aQ�e�K��2G0r4IAdY&����@��"�ĘdXL�Ym��Ae�t�� ��L�
[�C�qNǽz�� s��^�o.��/�g�t�0`�2N�*�	��߳�����G#���a1dA!�(P�#
�js�,�Z��7��A��lQs(���� v�0B�0���HB��E(q�q�u2N����v*~���k^`���ce�,( ��Q
a����Ae�h�!���{����H�f��0|<02Ґψ.*%  ��))S�(RD`�%�X�phPz(�qB�
�!��3�%d�ET�P�V�8���c��"6�x���/��~9�����L���$�˝��s�t��wS�Y���#K � 4���� �ÓH%;L"��D A H�k� N�r�A'!�� AH�P E�Q,�����X��@0+;I4�J'C4�1�+Np� ��AH:PbND�Ib>�"�4@��O�����C	�DLȄE . 
�#�" " �'�<�������!�f��S<I�0����o�WTֿ�q��'���x��Q��8H
lp�?���3D�XE���"��9� u`2�  
/��Y6��d��\��5NѰG�)��A�ҐX"t�X"(�7)x���� �[y;?��=�.g9����}*� ^Y2�0� GL���h�c�1xx 
���!��� <�-Rt
�Pxb&�(�3�6:�)��IJ�� �>4b2tap� 4II1�Ap�p� B\6�0�:���1��%�d�3~��x�w����1H@i3@��JC㇇@��C1H� $+�F�p�3
�p�3`=�HKDQ�:��H`�����H"�Xi�mv�!��i$+�R@ra��-Ɔ `���!�6��!��=l�TA�(��`��G�:!#&H�H@l�0��`|L��9xmiB�6$M湍#��6d>h�^��x���r��p4�oQ�wN����e�7yA "�N@��3D���\$��s� ��Ye���< G�A�=ų� x��1��H3���t�8�sȀ��E1D2S ���a����/�<�'���xf�"��4b��^ �!�`Q�H�&��}�,���
�p`��` [�H0)�a���D�P�dt	�ɲM��!.	%0�PT|*T����@<˘cBJpL�����7�*U����=��e�y��r���e�9� ��v��^�x��8In���1�0$ĬwA
 �D`����    ��1�H��@"  �� ��a*"�b�X�j���:�@k�N�#�$䆄��`�4
�_ P�J�:Il8��"��A��btx&�B�LB��HD��,"!�"c"`� "^��1�`$W8�I�q�q�| �
�����w��ߓ	 ���n������ͻWx�71����m�(�&���[�K�>�JL�`̲)8QA���$`�\
̐eA taZX)�1�!gK� &à(E�I$6h�X���i������<�e���]�s��i&bI `00E!"b�`�A��y�.+plQca�M�0  �� �8c�I�2�)	1*>1C&\a�S�fP9!�H�m6	X�����!29(YF�ad�K���E
����3���[I�����+8|�]u����C�M��5t
tQ� f% �D�`���t:��SY0���-B �`�F c   �Q:���I�I@��rFI`:����=�A� ��PI���bg� ��m�YLvH���'F"%EcJ��O�OF$%"B ����8�R���E�)e�!4K� �̠��)y0+ �^�*����c� ��
��FF���Y0#��in�!� pP0��p�")6�eZ����3�
bQ�v�jф��x)� ̊�.�>�@!�`���Q,5:��ґ�H( a�8D���{\�[9�~��9��:�$��d����R� A!D�.�)EB�Ԩ� |���` ��1.� �P ���k��!� tt2ȄP|R�����T�x� dL\R��Aj\�
%z���+��')s�>O�>T^��x��|��m���K�����Yzp&F*D��( 8� B�� �!<�Ƃ#:�k �	�Qq��HP1��`@"��� J�#�s�#��3Z�`4�#6*� B*g :� :A���H(JLB���%B��g�
࣓D`sB�e.��D�	>�,><���	" "���Lg�4��{��=��������Y����p�'��A��ة 6�: ��2���"��ώ�������I�C�9!
Ř�ϖ0��8D�	�hDFq��Xp&	c�H"�!f*�ᨰ�TD�$�Đ� ����	�f�6�m���a��+�X��! ���"A$��C��1M$���*Ӝ"i�@  �$�  @��!  ��	�L�(`Rxdf�eL� �6��aq�}Y��%@#f�FH		J�<cb\".��|�S<.1�|�79�u)�>ǽ��?t�G��G�;=^��ACr�fy�!��!(`�,#�	PG( 6
H 0*�F*'�t@ 8�b@,0 ���XEfd8�šD:,�H����)� 8� :�0��t���sT
Vb 	G�!"�� l�I�d��	
��D�B�ct
�C�+D��8�(�l��PD�q  �pd����6EY "z � 40+�R���-��A��� �]YS9D���`E������"UV0�RQd�m
�Ę�eh�cLh\�>eE���!���b�L@G<qaB4�\�c�1#"ǀH���cNM"G!"�%9;���%8Ǘ�s�7r����Œ�����>+7  �`Px\Vy��"U
� 0x�����L�1>�LpA D2X<��&�&6����še���1�"��0�e���-^�%( >�����{,pBH����.YJ�g��s?�p�9��{�p	a�7\CBrΰ�EQĉ3��Nc����8��c�!�\�'��`Y`��d�aZ*%�!�%C	�q�5z0�hT��8*g(�l��9'��Jg��"��( N�=:i(M$�hAd8��z�l���%PcO�E\�2��:��aLFa�LY�2�x��dV}�*��B�'�@L�@l�4ȥ�M���5T\��M�H�
��  &#F�ad�Ϧ�Q�]�I�
d�c����,[��fIR�H��!he�%IqE-��"Z\�����h��w����%���� %�(��s�������v�r�e,��y=�� =��0���P<�g��s|�Jd�p������$ RBL):L<x,%b��XT�L��`<�$D���|� @�$�y�1�p��)�h�0$��A"dB����/ñM�c���>��5J�?M�%��a�D�~�<�|iХ�O�6����"�}Lf}�m��(5�x������ �$$	
�HA
� "a �ȰDJ A8@�dV�� ��s�m2"�9�FB@':�Q^	 I*FH�P�0*��.ILb�$��XHz(8ThҀa��D0�CĦ&G�)&ucF�	I��$`$b4�y�@�@ȁ,�� �`��lJڞ��PG6Y0�	r�h��t/v�q�iN�Q�h �6p`�➼�z5��sށ���c���}��U�X���i��h���`�B��4/�5����
J��b`� �p(�����Gϗx+w�����)��L�(#(
�0
EQRZ�0�C$��#��!����� <6�2)1<1`�qI �DHH<�y8��666����q�م��6����Sb�D�0�/�6/��6��u~�����t~��x�)<�|����l��
�>���E̛�ȣ�@�#`�~G��!**Z"
�� 1���q�It* $� Ip��t0��F�X !8r�@e��H��y��s�=���wq�fҲ�UbHҩt:�C��0�,Q6$1�����o�D�	�P2���� �#"�@G��F'�@��#�ᢢ���Y
D@A#G�ϓE �@�=B�R�`�
�tč�K��ٟ��A
�6��H0�M
fh���:U��!�c�DU �"$���F4�$E<�8�2Ǡ<K*���r`T�	�H¹|����� Bf�m�c	3�k8�P �t8����Șb� f_�M&<�n`)!"�s� "�10@PAE,�b��X��(�J
��� �Y��G�g ��aD b2p���l2��a�.ǨhtA 7	x�5J�6ϡp�H�C:�4�S~�"	_��2��
������<��MT\����oQ`��5�e��~�/t�t���!=����Lhq����q�^�$;�� b$�3L�����8!�HD"�����74�c�E��[��`*;�T
;�c���)8�$�����B�0���
1@�#�b�p	�0bDD�@DL����C@��q���X� P�H��7�M��'&ĥK��?��I�b7��� �ޘX�M�gFb���'�,S&C������{�Fˣy���˜��J�5J�&� >Hެ	�i^�KP�U���ppa�+�]*v������	�`,����H�M���>���UZ<%�行�У�A
 E!�B E"aB�U��e��`x0��DGC%�L}��h����æ	��B��cs�<>�.U���`d|&r4p�)���$&�E&�2��|�9>�����=V���2��.;��7��Ӡ���E��*�ㆬ�9�G��0��!���2< r<��@(I$��
➊A��$!$!NI$as�d� L9`�/�,6-�\�"���`�p�E  �N�t�ā�N �AH ��!�8>ڭ�3�a L,(�	8�1 �#��$�2A���@��ƈ16Y
Ը�f y @|G�/��ã�� ���O� b|"1D@4J�~��R�c�ظXX�K��aĴ�1��]^�"q��}P�
 oP�P��(��&f�CK���i\&�j�E�T���	�py<]=_��j�1��G��3!�h �� aa��%�&3&
J�j�s�1�Q  A@0 T0"�))1A@F   �	F$dQP9e�et(�m�4��4G���%����"=0� OJH�.�6
!�"���3`�S^⟲�'���x< �K����r���}?��?���S?+��ѧ�R����8>]
Pzh́L`�e�>D " ��qDC8�`�l����Ă%�5FX����9�������b��15����9j�h��`T ��TDc�cT
��(��8
��1����t�D($� �QQ�T�P:H@d
Č������ϲ�����I����� ��{�GDD�.i"
*���?�.ML�i�l\�����tV0�ԩ��� �ɛ|��@<�{/V7D��Gy�*%���I鲨1��2�c	&m��b Ő�&M�Z�@K��
Ø���D �1�����9�07Q��,Op�>c&X9��	@`@�H��SZ(4  ���@t�0 }2(���Q1�0G�)19�d��ߥ�`�$|���`"4*P>$�&S���&B�����M�c\�{���I����1	��?�>��~�?��"8L�9iw�8�a�ʗQX%�0{x�L*�� �a`�"��Kr`')�Y8�t�ဍ�r���GK��*������i��&P��D��1=,�@H ǩtR ������@�X!;� ��(08����=4RH$�" C �I�0�AR��x �G; �^�r@  ����A	� Pa 0��E�100��O����$M�Ԉ�ڱ2+��#�C�B�6!6:!h�5���}�G�d��NA���C`Q�p�Q�4B��5�Hr�	bZ
� �8s�s�8�:s,��GM0Ɠ q�@i��sO�.}�(`9�$3
v���� �T�(����C�0 
ABɓ�2��	%%C�6+ta@�	�)s��|���P��Fe�M����S�Ⓛ �2��A�-� aD�>:m�M�ɗ٦BH�����x���l������|���_K\�ϴ���zl1�O�8˼���%�����f-��q�Lha< �9�`��HV:d�bT���4:�a���9`�4���L`L�]>�g�2�8�]Z��l�@KK�d:]������ �1��ѩ�,�΅��� �#�'pt4#4�HDWY%%�x6�|g D#�� �%F� pr���2C�O�J.   �� @���0�%��@��E!�>����"�:R�~c�$}
X���&ɹ�˞�B��C	�h`<w^ξ�+�{8��#Dd�P'Cl� -K�;�� �D=� U�h '���b����Zz�a�\gƒ�2� aLGFF�a5�p�y��x��.g�b��Hl�A"� AY�P �$�N�2���-h@�@7`�  Dx<F��0< S���C(!�A��@�"a�n�L��ч�L�!6C(3�8 E���p@����
er�p��P��r��l����	��aϿ�2(0�3�<�?��w�e�{�{�G��+D�8���V��H�a�u"��,	���,9�Id��Npx��c�YRq�18�X�>�e@�5DBl8��2�۷5Ն�I��̾(����I��"��%���t��w|��p&�����St��m�8�Log
{��)��6��&��6� r�����m9˛xod�@o��,�Ep�r?H����Er�jKM�2b���$�hl!)���S�yI��d�����xu��ө����)?�щ�G�N�*=$&�,�!��"�����2irt鱀��(rH�)1���XF���� �����K�����\��">���E8�Q@�"!=0*cb����γ4� S�)�ʈ!G���RiQ
&���)Y�'Q<�"��#	w1�m���'���0K���$���,r��:G��B6��� � \���jʛ]�<�Cr���s<�÷���2�G�D@�M�dQ��'&��yq�e!�_��C���9���ż���x�&��_��i����&��/�	?F��2�%����$� $:�L�h�S4�	�`K�# ���ID������k,y�|���G8��2eB0.	:)6�	�δs9m�w�C��ir��L<u����rd��v*�!��� �8�=�8G�!��:�eN1>���d�==Ff��M��A�i�҇��x	@���Z]G�2T   �!��H��1�$ÝA ],*X �J�͋�"�]FD����rҗ�Y��y) �YuV (b�{d�	0��$0X��{(@ �'� �q�&m���"E�	1�(�4�y�mRB,b�I�㒠������!xDp�DP8�p$tء�,-3W��wю��(٘򠍲2x�@0Pb x�ؠ�o�٘|a���O���s���`J�@
F�0@����C�2�&���1�1�O�3��q�r��)
md"�P|<
�� ���*ʔ9c��s\f�ꌒ��wA�q7wq[�������s>�kt0��Q� 0�Y��Ai�qȌ�Q��0�eK�G�0&r���X
�x�'�8�������0B�0A�p�( A``:Ԑ���i B� ($r�hc|�<b$ΈB��``�D�1�aĶ�m�8d�	:�x�������䐖���Z����4�y�Y�L� �a� |�@@H�$���N��'
	t�'�qi�ck��M�N��	*(�����X(�1M�*�,��	�1�
k\2��,Y
Ĵ8Ƣ��F@A�B���� >Y�`lf ���C�"��� dT&Ĉ����)y���=�K�gi�"r��

��AQ( �Pb  �1pI�AHDD�h#�L��Y�x@	
y <��O��
3�F�#eJ����,�QQ	�Q���1O���3`��q�mx8<~�˼J��q�*m��y�1ć0���?o��q�=�� 	�`�Hf�82 qH�!#''#���(�	��0K X,CCh�xB�m�%.x��@ƤpB ��jDUN�xH�hD6��� �Hv6�#+$1@���"�4,� @JCC�%���0%��8F�B�E��{�a�X�!��xy%p�Lf����N`���'CQ@�����G�A�81:��C'�.�d�ʅ��;s��ŨH\bCt�A����S��*Y�Y$b�!^��O��&ef�aq��P���ɒ�EG�����1@'f�C
G �@bD�g�,
#,D(�J�`P ��N�:�}��)n� �9�O`��qCdC��EQA<
�A!P
cpO ��q�xxb6Ya �	����M����d	QI0�a��@R�pq���4���B O�N ��Eb�' rh�C�<���� [,���(>�nz������-��`�H b
 ���h�P��� D@B �!5LN�A8Ŝ�a�)I�r0dR���d��Ș@ CtDlYl| 
��A�DB!bC ���#�ƙ �� '�iQ�� 1� �$����sl�.�������u	'T,(6A�U��݄F�C,CD� 谈�G��P�c��� ]v�/.}|�Y;P�G�C�Tڨ՞=T
��b�@�O ��Q&Ba�AF8��8���Kt@g�3dTr�I!�4�!��H�4 8Yd�	�> �6e # &LA$`(
 ! �!� ��`�t�� .nj.>���ǐ+|�L�2���@ �� � @Y�� ���D �t�Q�D�Px4D�i#a���(v��!���������"YLTNa�� r��	<	����)>C�,3���
c�>�����	x�*��(�-v�q�ȍ<�?�2���U6x�  ���>�	:
S�"B�!0�����%	��pXK��A��p 3f�D
#AD�r�HBD#�O�,6<�H 0��H*+�( `�D "�Vv99�l��8ǔ�Û���B����b��{a @aX �B-��`#����dDTt(CDG@��0$*! �������h�1 ��B��G�I��F2�C�<MttB41����0J�528<�K�:=�9ŁB�C%!�C�#�0���#�asFJ�D�F��H���D�M�� BJJCFā#�������|�8A�W�d����& �B��`@��0�,�&.�B�*]0�;9>X	�<Y�������P�� 9> S��#E�F�,g��d��,FO�,*2B��א���`h���,1�@� m�!lG�y?��-^�׸�?�Gၙ��Xy
�����D%(OKD�`�(���J:Z,�����
�!@��óJ�.T)SbLZpdI�HXIB�C
Q;Aa%I���P0�0:�!  �eD�`pl����<J����s���P�H0 �����D�#<�1=Z�Y)�x��#�dpi�ɐ�G �H����s8�$��^�;�⼐*�E@J��	\�D$Pq��p�'���2�D������e�ET	#<|Rd�c�����8��{4�`8�`SA �Q�'�A�L1���L�C�9O��eֹ���l2g@�mEP�"���;��`�O���
GJ ���ʔ!#��g�0%Bf������t��H��D|<b�T����PtB4\By*���<fB��o�qn�E��	�Tq���M���i�Ɔ�f��'�t��"��Ɔ�����/*��`9:�cɒ�-	�O BZ"�Q`Q"�ґP`)P 2*�	� ��*
)2�Y��bAR�D a���rÅ ©t�`W;+��+���P�)L1�.��w�`"�Ȇ{\n��E�Є�Pj������Xd�lwQ�@��9f�bA ��C�,�.��B����i  b�(��_�O��y6q(�S��`���� ĨD�Tp�D�,�A@<x�8Ĵ@D���`DD�̓�S@`�sT���crN�5$bF(�q��!
��90J�C�!3` ѣ��x��gό��H��J�KK6 @P��Aa �AaH0�C���I�0 �.x4!
�����1 �����C���@ #��&gD ��q�)����*�lC��DH����@�<�?Y|�� ���2{��Pǡ@�in X� ���u��2cy�[��I�B�CB�4X��d�X�X�Ixz�� jJv�,)`O��R��9[82.��ѠD4�p �\�ʋ�q�9����x����iQ`D�?�mΨ�R�8q`!yEp�k> 8�PH
;�p*�h���-�|q��h��,)\���~�e�n���&�H�h��$���1�$X�X�g#��&r�1����b��ÄڤqP�p�Q�b"ia�B�1]N�U��F�P'�V��3L�G�2�F@�.6M89F�hA�S���#1��"��.?d�*H��#N�R��CF̒!���g�7y�U������ipH�=TB8<NX��!p�ϡ�q��|��ϳ�����y���ZA,��HÜ=&0����Ȁ,1�yB,Y\$�@0ns�26�a�ļI�w0)Qa�;o�c�cQf��9��P~�Et^�S�	h��͔8C�,qF�?��H>�-2�@�D)]VV�6 �6� t
L�;E{�i���},�uR�1I�@ �fT�H�L9`�Cp �p�a�4,i !�@ �p̜0xr(y���1��f�1�� s�:%&H�S��"5F|�k�$�i�  b�BD�c�)���Rhȱ F�t���<HI���	�F5S Zc0J��f��F�ƈC ��h� ��!Pp�]*f4xJ��pL@�ťG��0TL����Qd�� {� �]A� ��&PbA����9Z8�r7	d >�P�x�<d\,f�$4����P���F�]8�R,�d��1�� P,(" �C�"A'�.?����0���%,�$vX#�A��Т� �� ����Ah�P|�!58 &��a
C��
�#4����:�P~�.<:6"	%i�C����0���#�� D��)B�ϰ�K]&LT~�6 GLZ���Q^�(p���JJ�w�)BŰ6}gث�L�>  ʬ���a,S:*��`�pX5��p % A!�PC��q�		%.��x�'8�a����&dB��C�9L��@6����h8$	�0:�H %BX���$ �<�j�p�) �3�6� C1z��GFA�A؃���1��GPF\��(�S��!�,,��  m�#�}�pB8%� 8.��/���Hb��Pq�P8@�&.&!c�)�ta��p�Ӵ�H�T(���H�I9�G�H�I�		�#�0e 	�4����`P$B4BB 	����K
#%�����O�"��,�����L�( (�4� DD`d �"<�D��� ��   �Iq�3$T F�00�e��e��R�A	D��P0i���u���EA�"x�9�
!�`�c����0p�> q0;ЦDD�$I��m�B��ɇ��� B $:���3%��aN���dx"@	�4��ґ�(	�Q�9c$$<-�(�e��G��fB�u��l1���"( �1�����p�4�s"1D�#I0ny )4���b0x������xK�) `nfS�Œӏ�Þ��� tX<-C�7�EM��f���0�%��hbt���	I���C��A�����$	i��<x�Bi@����`#��H�"�f�!m B�.�$	.R ��0�aL��F��,D� �>"�cL�@H�}2�Ix���! 0pI �,��@��H� J Zt�xT�K�S�b�g�P�ɐ�� (��"�0����H�  J
C�HI��(@Fd`؈���4#2x�t�a�y�N��:!6.	%�0X�ʄ;�"�����'�*�����=����	�ܟ�/p�$�
�T���Ip	��!��$�y�G8g��D�a��!AIt��b8��q�(�%��HG��!�� :��¬1�gQ��[4��>G�u SR2<E���3C��>!9��X`�p&!bG�@A 0� 0@ A�	�<ъ�' �4t̰�D<z���r<[Q2��p�����G�ƥ�OƔ��b���q0998-|T81!&),(*�d�1:@L�)
%�����(1&AL�&*�� C��I���@��o� ����y�<�,2@G�E`���!! F�:*&Y�dP�3 ��AC�"�3a��DD� ��� H ����X$"!@�M�1o��Ǽ�gqlRC(B��Y`y��<Y$��P>y�G��E���!�eDD���AbL�s<��F�<yN��:y�\��b2����XLЁ<�#�:yC �ӧD�.R��X�O�
hy_��)Qc���Iq��.�Q:�P��a*@��e�8���I�̉t@�-γCdB���2�X��oi�a�X�a�q�&��
��1"b%��"/�$E�C�ØFG
`�il�J�@�b�$�!"	D�\HV
��X��X�D@�`J�E�XZ��qxN��s����A�D�H`f$�l�r��!},ZG������ &B@@�K�E4�dtq��4(��0ɀ����À� !I��01=LN��
��a�t��)P��)5�P�PI�b2%G��=X�L��!�#��%��!KJ���� ���eC !B����*�sSZ2J�9�clq�}��9= � �QR�� � (J� �����@�bxDb
G�@t)��0F!�1�#��!F &@
r��a�.�
�)���Y�DL�(�� ءÈ����B	��`�\�׸���s���T��6*c��{y�6�M�H8��úLE @Xr&(�%B��@ � ZZ�` C��@P�(	�bh����2E�a�ਰ��H��<C,D �@TdF ;‱�H# �� �-F@�D�P<L�R�r(�J%4q�1�;l���cq85�5�Y��0�Pp�C�	fD`	P��Б�D�4&
1* ��F�=l�tP0 <$�BIP&��pT""���GCH����%YR$h�(�pN�U�Hi�2!b
����Iɠ��h�!�G%�C��G��y(18l4!��@c�#� ��@�|�%SFD�h`j�>
 c`j CD����Q�H�@l Cɂ�#����� ��(��)>�"YNq����3&��t�e�$Ԉ�ؤ$ B�l�AH�0x��R�b�Da��"�y�'�!�s<E�oS�Yr��'˟p�!n�m&`�)1H���K�&.�i�@�:��pb 
�2�B2,9̒�\�ǈD�"(���0�	D�B"�$�u�d ������9���(�c�D`�H�8x�6=2�9��Ja�]&�΁�� �8�Hyˉ��q��ahi!ŌB����q�"�}f0�Št �(:N��� �Yǰ�()�T�� ��&.<�>&�(죚$	��n8Ĕ~����<�o�tfوA��	�=t2,�c��}$E|�4��)@!��|�̡Ӧ��i� &��)]:x@4�   >l���F�y���Ir8̶y8D01S:\$�9r�6>����y=��|�ty�씧�:k�f�98xV �� � E�{$TCw���|	` b�������P�)AB0� tq(�sNB��Ω2�A�0jh�:`��1bC��·tY �bB���y�� �%� ����Kd8�{|��#~���O�zl�b�#(���(|���GDښ
��iB�@���OE�B�l�G�FƜ�	�c�2b��0-D�`�ӡ�GIC�uF\e@�&Q�17�e���S06��">�l+�է�,�FT&++dp9ϱO�������	��d��q>��n4>ᆇK�D���1�ȉ���sd6'��-	�l�+q��������>=F�1k(,p$��\
X�0�����'�Y����gy�)�,��5"'Q$-t�`(.ۤ�A�aJH�1:]�&��DG����7��O�67�����3p|�ML�
`6m(�vNbH�)bs�:mt ��S?�S9����S8zD���X)d& tf Ly�!�����h� �M�����������P#%ϧ��b�6>
����ԁ�$q����Ir�O�/9'9�3u��a��bLGMN�-c�Z��l��8�Pj� `�мCM���1*1<3`���ј�|�s�9 ���l¨BH	�{n��'�x�,�^����ç��0��ئ�E��y̐����2��94�C�CR��8c�
+����/D��g�&��I��u�H��A��7�2<ic?�ź&����a�{OFNAIɘ��"��S��jZ!�P �"b�Z��%�0� �bJ
OJ
F��f�Ҥ�=�5N!+Yri�7h"�O�� ( ��$�@8�S	D� ��Q"	�!1�}����P�b�R �,�Ӳ�P�40e�eJ�m�) �H�(�1�S "�!�t1F��B�2#S%A&G�1p��B06���f��'u�4q�?�7��""�?
�F� H7�}Pkk�� $��,!�*�������[F���"1d�C:o�o�\%&�O���<7���Ѧ�q���3Ǉ\<���9=5�LΒ�҄RD¢� �����9��97v�|es�s�d#�|99K�� � *,�@X�8K��+e��3����}�w�@@[�I��Hဌ)qL�- �xx̂�&��ǈ_�b������e��Hp�H�ɘ�
.�4��)#c�R!�  xt�pdio�F��Mqø�9�B�6=R6�c�';4!TrG��~��_�lQ�;�(�q��)ԇ�w�|� $!1`����Jd�a,�DD1$	@ !"�'Q�IK���gJ��PDcJ�����c2�<"��NO"���t�A$����x��C����-J��,i�l��rL�C2
ôd�LPr"��>-�A����#Z�HaIT,h`0��OBE"@T���"��M4�A��*i�4N����3y��CG��8���@�$�ϛ�&!A�!-�ȲNH���BD
�#O�9�Y&OJ�1�sb�hЈ8�?śHHtI�Å3���1�����#B� �g��`B9#O�	J"ϰ���(�lPr��K��0�
 <J��5���` (
�!k�:T(ѦD �̔�=(!%rt	��	�( S4�h�P@$d���.���0с��>Cʘ8 ���as��K��J��%���7����8Uv�>�����G�<G�+�4	@�z���a�E����y�%::��b1$�YgD�&a� 0P��%ǐP,(hH�`��N������R��۬��rM���tH���aO��'/	B�s)$��� � (�H�9	!��P6�3A� ��� bh����X�D��D��aH\!��$�`�b����#zHRd �$PAĸ &I��1؃���т?�?6��0�?�1���"X��m���Fh�@� ��� E�:��Q�h� �p�3������|�J�u�P��a�G�2��yH�#؜c�4�؈��Ta 4\Rbtx���tI��5ϑ�3�P�S��(��0�(h�Y��#�J 0( Fe��H��= ��TА9%���O�9,u����Pz�dH�9�a�cO�>1yL��G#��B�y,�<b�۬b���0�0�	�S��*i�9�,�&A�<�\K��HHB�� 	s=B86@g�/�a1,�EI���0�#� ,HD �Gd�g����dX|t
���`)�<e��%E��!e�
$à-� RpI�HE  ��(���
�b� q91���-�>��8�E }F!(XRS�#� x�9��D��:0�8�	� 1��.�
{3X��OcCy�h��G����|�h�L˕� ���R%Ƹ �A &�T{(1B��"`�|\T�i�X��"�b#�"�C��'�����9�Qg�٥�/����[��О#��)1�0�N�dv���1r�at018�p����^��\�`Ƃ*,
  � E �.e�n��!9  �w���a� j,S���dQR���\&!a�FF@ Aa0B<
Y(!�&,��N
��=��*-"<6��� �Y$Q��Rf��ƞ�q�����c4h#ɚ���4��@��/F#`�~H �H�B��(����q����Qjz �1 � FY���cƘP��� ���6���e��p	�$h�AD�P�0*;�!��$o3�	
d� $�Hc	%�c��`#��"�� ����)��K�%}��%B$�0GA�0J$c�!��"|<T!
@�FD�z��	�1gx��x���
lӌ���>1�!��I\0�I��Nb��y�$�h��%M�.="�pC��0	遀`JHD�8�A�#Qa�*#�q�%��{����/�y�����K��ӂQ@ %���0��Z�� (>>Ǜ)y�P��:��0�0A(
PŢ �f�O�G,@I!P �g�"-�(p�>.&6)�x�0� �, �C��W8C�K��
��`�]�؜�(���3�1]R:
}�9�����Q����!%K��vN���G�o��d�c��ؤMŤ,�X���
�0��Ȉ$�b� `<&��� <B J$`p*�8�P2@N�    c!!b���)S`���J�G\%aHJ@!������(�a �r�b�K�"�E���t��b 2<�"�����3v(h�ch�c�)XP8b�cL΄-�ԬCL��E|zDD�X��a7�ܓGߐS�P�L��|�g�K ��	(B�dp�L�tɌL�==(>@�il&鳍�C�<"e�9
HH,���0Ag�Y$��8����t��|����mD^y��'���z|�G�D�4��QP�ŋ������G�1�o�u|��y OFbΒ!'9�e H `< �8"���`:D��`  �?�B@Ny��,e�LH9"f�.�!C ����p`�d�)H�6	�Y 
7	y�� 9T��Q #£�#�ʈ)�
��"6H����`�~ilV�&�ba�x�2 9EH�Z��B�`�`ONA�>CZZ���=F�t,IX�	Aa��Hc�I�((�%DD��c*�P(	��>"t$b��	!ã �s�)A"�1\�$�$IbT^Q!I� ,��$��%���9	@2K։�, Xzl�̹͌�l�9�@�cȐ	LG"��f�>�b΄�$}l8>]$!I�0ia���<ɿ�
�o�.B&�;�-��|�r压<
YF/7��(m�ӧ8��<*= ���`� 1a,c1"bȔ!2K�!�O�u !��.9�"��)�'i��?�/�g����?�?�¬s�q|R�A�2"
�h�?���e�7�� �iP:.���7	�b�
�E�`"�%��.uVy �CBBA�������>�W!��E�@�qx�[�1O	�y��T��ʔY��Q`�6>�:<��P|���2��%F�M�y�t p��B f�{tyF��@�R�D�@	F�Y(�\bq�.
C'�b�e��3��aA�S�P�0c�99`�13���E"�m�%
8$�9˔H�[dT�1f��lS����b0d�>	"&]x<��9%�1E�'ǈ[\ ��%V��e.l�	��ƙ�+�@|��r�g��9%��R�a������C�ؠ��%R2�
�8��:����Ɣ��&���d�
p��-�<�	<�c��5�\f���%�0�`B&@��L�h�1~  ��o�*�'2��7˼u�S:�:=67F|LV(����D���N<<&�9�k\B���
�"e�1S�rJ�w�'��I�<�{.�o����m.��6����Ϟ7g��tT88e��O�C&�Sf�3\�C8~��������JO�j>�6C��c"O��CD:��Ĭ���cD��!c��!�G�
�����b��p�!w��H���Bc�sL,V�7S<��s�@�)�c��|�����|�2S� &�QH�`H�w1Y`���P��:<��Q�[oQc���mb2��h\���յ�Aʌ��� �!(��Ш��!< ѱ$0�<'!&�Y2��%S9�a��p����i8fȀ�ܦ���G0Sv�,��2GD��L� �@4D{�� 0�OX8 q၏@@� bvB����a�"J��h�i�%9k*�J@�b)�a	G��3�S��1�%�5�v��i��	4x�d,RX(`0�$�8X脤9Ez�  �Ȅ�w � ��� �0wS��}���S��	C�I�z�@�(�I�M&�q��i����6$���I�<�<p�C8��*�J��|������8�QS%GĀ	qD6w� ����SD���E�����,9C�EnA�Q,�B(�b`  �PP`00&ct"| �Q��DB���A����+�I�s�-R��9E�T�r���x� J� <`�,T��Qc�>�L�� �!���'�*�P� А9A'��1$� ,L�xhX �υ�R�y�Mb���4
0b����)�pD:�4;q0��T�0,�H��O��`ΐȔ!B�(XD��Th3!a�K<G�1�Eh2�`�pN���F�C$ɹ��J'Y;���a�5��$��9��x�c!!��h�dT8:�����3D:9�c�HC�d�1��%�b���� -GD��q�(>�I�\��.ҋ�!��;���K��J���[ s� �\�����2�M�a0�PT�b�GŠ��������#,�* �1uB�9$���2�P L��+ Nh��Ǚa���>aL�s�{n�@L:��/`����T����1�<Aa�"��2wCΔ9�SܠAX���C (� X  EQ  �`( �7�%�a�K� £�F�F@`�1e���H�">�	#T2��2F���1�!h��ه��)s��eH����s�X�E .>M,bO1�u�Yc��Pɠ�a"مR�LL��H41M$�\a�'(�`! �1�B�5W����s��<=aN��a	���0JC�0�9��$���҇Q఑X$�O��|�뼇΄e$R"�2ppp��P@'� /8b| ��  X�Ct@��`a�� � &� ,�����!�GKK���0D�Ӭs���9;T40����3a�D�� �E"A�`".����G���)6���j�L�#���"���إ�֘��Cms�%�qH ����Pz���0:�$H �����H���eNP�!`3$C�)&t�℈��d�ֻ���\`�g >��ac��@�H������8>��ԏ��ˤ��C��Q QCTL8C�g�o�%^ p�M��!��18(�@�Á����0% �Ő,64� D4F��`&�(����Gd�&{x�rF��9<28��a�:r�&c\rp�p`��Z,a���R��@4�x�#:�`bl,�����G���uJ���&KL�*-F�t�ш��Cz��`((0,�ƒD��'C	�X��Ȉ(��9JC�!�-%D�CB�J<��'�)s��� udQU&%�%�'�@k�|$* �0@ V�0@"H�1�B��!��S"	!�8���(�������2��	>G�#�y�<�M��eN�:�����]0�<�쒾�JS:M�)S�a
�1J�4��}��l`��&��1����Rc�����!)Ѡ��E
�K�0�B�<(�p���DL��L��2"BJ��1���Ƨ�%��f0��}1�r(�mO�}����G�W�U�,C~�UV٢ǌ%sN�Kː��C
�s"� 0�Q@��H@��}��R�9^ƚ=�q��(3����P$�"C��Ѹ���)w��"��q�GXP�HD$H��EF�M��@�D�#a����M�1ulD0x�نE�l��d�9$&:M�ƧE�6r$�h!��xx��,%��0z	x��c��ONGD`p��`Id��&S8-sT!PRR8�<����ϠҦ�]L2��ah0|Flx��J��� / �!"HV:qH�
I�!�  D�"0=<��>�-���4��"'baJ��r�����3'q?�l�#,��3�-�#P�#鱏�GJ�O�]�"�s3�i�&{B<���4*����Q9��M�顑E�.�,ܼy����M�u��H��s�1%�(T8��,H�1:.!>C��P9�������<ŗ�"1v������%�%u| �bV�	~Z��p@��s�;�p/eL�78b�i�(B ` �шI` 	10��#FCB�42EvQ	��#� @|  �" a�S��ad��]�	%|��P��)�d�Qf��G�)=�ty
����0�&�ČY�5֐ �a�o��@�M���H�'d��@	�a��q����`�L�,X sL9fƌ9[ܦ`IƐC"-�X��y�!�D2�Pӣ!�Ѳ����|�SD��19����F������i���ɐ�b�8S�Q �1�T:�S1�NP r�
�	��bP@E�eA�1D�5�0���D��RR�1�%68�C�Pflᨨ��K=nQ �0)B<�Y� w3���(���I5��oL�C���>.����폏�I��n8�f�!�#�{R7g�2M�������F�.�5�a ���0x�,�uZD�� ����\��,������
�1Y!�)���ڼ��٫l�*<� @ d�)�\�x9�{�Df|_��<(3��"�%!8(A�@�8��	F#�]�I�k����0��DPb\�0�PrP\8x�����`R�g�"]L
�S�e�EڜR%�����md��������HX��&!G����l���@�y=�0@tV	c�x�F�<�@e2�RWlDnS��5@��^<�u�3�1fJ�	�yAY���`*5�S"�l� ���%JT��W8�&�"��k��
^d��:ܠ�@	d�(,��B���("
�c,8:@PE  #�a��XF,9`��X�'"-`'���q�6[ܢcjnq�Xjf8α~9��l>�a�-lz1��g���3@؉D��G"3���$n0����ӡC�=�PjLDxX�}S��S\��9N�kLĔY���{�4�� ��و;L��xW|��	f
���J�/�S@��
Y���׏�h̲p�g��XZ0V��l30Y.�"Et �!h��4�:{L��<��l�b��2�1GPF   �G��,!Q"T8��cZ�^���ͯ2&�Ηђ%D��Ȥ�'���h$�O@�U2hHl1E�����g,��]T6��'!�C�4�,s�+܅ЧN�)�Gc��%ˇY�l��a<G�<*�$1]�_TBV���D@�	�Z�2�^3<��sL$r�4���1� ���R� `��J�&CDR88LP\Re�&k��I2�g�*�I2HDL�j��ܶ��x\�=���A�|ld�$G#3��h�'0�QS��xDAd��Q�dD�D�Ih�`*
A!b �6
}���q�ĴQ� ��b�G`(8H8m)��|C��1)cl�p�d����1p0��[}2�6yؙ���qI#qpy�泽zN��&"MxTژ�v,�D������p�����{��M�D���cM�>a��p�?d��f���YɍǪ�M��5�u:��B5�_`Ġg�{��1O�Ib3�"9~�Ef�+����'����}��d��D.Lv��Qc_�x�/p��`K�/\�g���:�s�A�̆�L� ��p�ی����o% *>B�����G/2@7+�Z1j����w_f�6Z\��l�%\�R4���C�]�1�d�Ce��!�dy&@b�ΡDTx�588bvhQg!C�B��S�@:���	�qga����L�\
	)*�j�5TT ~(AB���6 h &C�I(�9�`�1�<}N<G��r���ȓ���	8eD@
""� Q��PIq�IA &���1D�e#PH�>���N׎��E�I��3b��<�d53:�#%�f��a!���"��� �D H�e�$
��K������eT$�$Ã����цʔA��売qy�l��i&���eO��
;�l�C�x�N�4���\d�M@�l���N��q�Vqj�eN2;V�'1�bc�c�>�C�'� _��f�>�>�P5S�Chv�ߚ�5p��(u��bFJ�ۨLl�Y�6�U$���� ෻+�hQ�F$�\���kg��@��<�7%�1��S`�a�1�����!CV_��   �``�(h`Ltu��E�3��jY`�*Kqnc<#e��(�(�>M&$p\d�9N�r�>�C6��� ��A��J�>E0
;,��#Pg `��O�>!�<9-�,�# O�K��&9���E�*6�9&<�J�,ep�)�!7�1��x�	�X�HM$�2��!���Q��F@
���S����A�����
c�E��z���� D�PtjT)`�PQ��Q �5��(��8�J�У ( �E`,	 $����C#���`㢑���!�P@ꨎ$&�'�08*n�LL�$��R�l�?{�J�±�I�}�?;�Ga��������Q9%2���J�����e���7M�I��ð;��́��`����!Y��D�� ��M�s�S�N��2����*�'A�����<& ���9/a�J�.Ҡ��2���d8Ba���O�Z�����ޗ�n���xL�$l\�<�D�{tp�P  À`���b�`zd�q4TltR�qpQX�
-j�`�4��1�	ؤ���
���:�)Kt�³@�&��`�˘�Mqi"��C�e� �Hx ����G�S2��@��xH�PA���S�L9�38ؔPقG�G�����2rz�cإ!�τ>L�f�CB��0�	� $��0 !��4���0 G���ս��2	���<u�0+-5���0D�%@���Q��I(5	��0`(:1@�1
-<y|�(�0"$&Il��	#"��N�:���n𝋼N��GE=�b �������Q�p6	�����r� ���؏�/����m�'��4�"�M@�:Ⱦ�$�ocsh6�d��Ȅ�71P�J���p�=x<��(�=[�w�
x�Y�F�2Aa�F�� ���wXf�,�`�8h��cS�Z|�@FD�o��~7�-�Y��'a�x(<��lx0"	Kx �� �0 )#�0(	l�8 $)$  �p5+Y�4hQf��:9�O��$q�qX`��6�X!���	�1TtX�����J ��*6 	�.u�L����))
�2>�x����mdTd0Yf��@ � 1!RSӐ�7�fLI��0���D�G�� ����
& �!2��.6	!6.}lIL	�e,���H��@8P�  � ���Ȍ�B4�X� &D0�bQr�h ����)��Ӂc��"�'�@AEE'�dѠ ��:yBF�
��G�41����8}$.:�0�7
!�����տUx�,��4�������@�gH�B���C�	;�����NlT/��f��/��h���7�1+-���GB��i>@qV(���ӛ��<��w�LQ�s�.���R�ӧ��ܦ�@��U��y��A�y�H��҅A�X��L�[�"1d�,_�s��1���L��i iq�s� 4Yb�8l�T�X�&�`P8 �� 
p�hN�%$�i��vmS%I�l!�¢�SdO�ݱ�I�<����0�А��Б�"�qB �O��1��p	�@8,���0ţ�>�cL�`���!� ���1Ph�g�OLL�)1�STL,>1��2�� Z���uZj��a�p0xt06�K#!"����!=�0���	�	P)�1i��0B��5�"ML f�� 	�Q�XP��x��ǣ ��G� C"� #�(� (� b��B Dx�( J@t�`h��.�$�I2 9�� ��kL�r�Zl��=������g��<�$N���v$�@K bwT  ��4� � �X��H��\������1��}���0| `�ǈ�-�g�:C�)�c�
�ё�)b1��>΄-4���L�9l\b^�	�1�#�v>���I��X!f�?�!�x���f[_����lddZT �2  p@ 
   �G� �@8 ��c���TQ�B� `��a��	�@�*�d�3r�1����`@|$
  }bR�x�	 ������cH�r,��"�cJJ�6c���T���Cc�@�C��X�(b�g����H$���dX�8))>=z��D!��I�`����a��pA�H�($IS�*1
NF!��`��&1=J�� '��#  (�e��4(��C��I0���P0����#1�p8�:�������ؐ�<:>��4�$ @Ë�%  �.=���&�#y�۝�/Ξ��4�EEmDa|�FJ��̦j�($�  � �j�[�I�c�q�����i��39�3�E2X �d�;���0
9��D�|����iУ��J��%0' (�q�����0�'�h�i���ff����:/�K0��<�ɀ,|���4��1f�Y�A�$ (	
" �0 D�.��eB�th�tsj-�I�4y�l1�C�$e�,:}��0�8&��!a��6ϲO�<28XDh��r��AA���"m&��P1i�ä�I�.�<m09@�'��ʄ�:gtH���(� P �aI�R�ay#�Q��X���C��0��а��(Pa�:>}<<;Ѩ��'�#� 0>���$�ML�<WP� @�C���@E�c�15% �� @8r""�$����' ��E"`����h`(�6:�$Kp�	F�`��@P �1  � C�F�'�H4KO����p�c5,С��$.
��,�"  ��a åE)e
��E�8�� ��s���3|.%{\�*.#e�'P�`�MS>�����(�U `�c��<���)�	��X$��1o�����b�s@�M�}I��yL*��RD�)n��w̎�4g<O��)�R�F�I�>������� x(  ��@���R ��Ha�F�0�r2�K�O�Q�H�B�@��H�e�1焄�i�b��b��)�#dLj\d����Q���:�s���h����F!�62Y����Sc ���u�ԁ4���rʳ(�Ш2�$�AB�<	��I��Đ1�����ܦ���Ԥ@r��`Rs�94,z�0 <!}���(P<ZD<a� &+$I�d�$ad� ��	+�Lq_d�6.>iMR�3�C1�x��0La,G�Xs�BC���΄*)!:�tqA�9�����Iⳅ��8{D�Aa�6�_�'M�$ $�!� 8 �52� ,B�l�3��b���=���4���ga�!H$��6b�.*�I�>�����Qr�'�P�e���HDD��y��O�P�.I�a�V����{dX`�T����k�K0�@��k� ���
6Ā}��������78#Pd�-<��mt��
���UFDTɠp�J��� ��
�H ��!�@�0�	� F�*IZ��q(�!F�UΒd�:�}LF��1��7x�,}$8��mtT�����$.�3�C���B�UN)�>>/��&�`Q�= )�� ���Se��@�l0b�Sf1�2.*g�)r@�
C�p�9��.�Ǥ2�EXpČ��9e�9�� G�D��!	��)S��ɡ�2��%dL����C�*E��L�b�.=:$�p�1	�0�C��2�A�=��C �� �C ��f �1�9JK�$H$��!�	�� 	Pe�.iJh�Ą8�  ��vԓc���a� A  �7  5   2q�V��=���|N|(�ӣ���IS���	 0����K��Ăw8w�X�C�!�e촨���0��4 �0�](]�b��E!�SF,��s,0�69�A��S��2%tR�����*6%��6K\c�WXE��h!`�!>%fX�� Vq�|�:=�e�!�).�S� ��IPR  `��D
*�"="�>)e^�Ӝ'E�>'�!9D��iz�҃ ɓ%@ĥϘ:-LF�Ȱ@�Y0"�Q�x�,1�
��D������ FH�Ǭ�HJ�.��YH8����P.3�eH�#��PDB ��`@� @G�a	b}�C2�����A����B��ȳ�* )��<:J��i�%�!EB�JHH	�K$)���&�l���d�.rfW@G�`�#ap8 � ��8��� B� ��F�"��A*$ph��@�`� S¥�E|Vo�f�)2�����M! ������İ�O����_����������K�U�3��)�ylt̨��J{�� ]�EX0��>j��G)��s�t3y)��p���%
Q��`�yZ��X�����c�� ����� ��A���$�	d9�O�~ �F�*8b�*�;|�d8 �|��0�x��\@�E	D�*G�  A�Ba@ ��F��.�4lt"bi֙d����:&	(.��L�R&A� LљP����p��"2�]*�H���P��L�&�̐E! P ���:�'H fX�I��OF
d�f�3�p�x��YA�N����*>"�3�@��$,6q�#�p%c� #��1`DXL��P��0 }�$D2$p,j$�����AH0��<H�:EF�c��,Kl1H�:�,&`"-	�� ��B��H$���8Œ	`DA"  ��I��D�S�E Ƥ@L���@�h�<����*��2�,c$Ȓ��X)@�d����xC�<������%����g�9*�1v��|"l6�}�
4I�B���vpia@G�<�(7ظ�f;�7�MzHV��㑧O�mf�D�!
5��2	"���TP	��0p	��q����0��L9a�U:����#K��衒���:1��S>K��\��8��:9x��A8@ ��`��$0"<�A�}J�aP"0C,�RCs�6�p��(RFd̐ �"��H��@�ψ
�D��((�C�1��m*��hsĈ'�Q�C%&���bB�A�84��PP�h�Se�䉁 ��8�L���>�!G�6)�0$ڦn�8���s���M�q�HisBB�D
�`�*!�0N���:YNqw2�6������.�
��e��hh0�D� ЇB�%�XG$�(  �B�6��a@��@
�O�.�aXQf�����<�V���	�&�(E@�� �1M�CfU�AA`�/� >O�/B0.����i`%#		��g����tm�N
>��/=�s��.�6�#�F�aF��'$M��:����0��*m(+����S� !"��HĐ�)*6!zL�		�IBs�L�g!�8Fa|�2	{l��:m2(�9���@)�B�   ���&�^`�٣'G
�Y69M�'x�&�U�f�S�@T F�K��E�2���x���e�����]��S@���D�\�$�F��� $ɰM�2:>C8$t�s 
&)/p�f�d1�á����IA`$f�8�C��FAƘ�9d��!a����H���(��C���0��AF�6.�1渏�0��*��R�� 贙b�"v�1��g��`�))X�� e�A�]�顴T(9:FAE�0�)R@��#� 8L��A��A��{�6o�]bT��a�Q8����]�R��#�;��54� �,����;�����5^a�Ҧs���b�)�ɌOs�l�x$�1�$Q[���6!lL���OdUj� �`���pZ����i�Xa�<1�������r�,mJ�8%���"sH�,�Hq���g��"ҧ��� �H�c>��m��\���4n�q G�I�6(JJx 0$�D丛��Y�<�,�SaJI� �u�́Ј� �a�It����`�@  ����(x�\@�2�@���!��QEf�#&PJ�@� ��G$�G��b��"������Ť�
1�+TI��p�(Ԉ㓐2i���0�1cj&��A��Bi�HH�A�@,!�UR"8x#N�ѡ�����c|���9�urؤ�c���@��)\ڤ	x@�a,��Db �@q	!"8 CG�!��l�Qc�2Uz��)R�L�E0-ZddcOy���eT�Q)���)7�p���gr�Pgb���záX'����1D��$6�a��� <��f���)<�h:���=�I2E  .c���,_�m��Qg�W9g�4�2��"f����`@@B�28�!P2bdx<BR 6W0���Ї��	����ӣ�UΩP�	-".`�C,�L�m����ЧD
#%� �@�� �t	`������{��e�:�$Y0uF��ty�ۡ�( "T��� �IHJ�,.> 
�̀u�hT��¤Ɣ�6��`R���3��9�@88�D�ȈL� \"�GJ�����6>�<Ul$D0�0F R@�"��� @!s �����騹N�	�D�r�KL�M�)>!>=l%j <� 6�%b���"�`�#ؼ�l�If9
'b�\MS��߼��|��&��[Mx�v����GI��RѲI��#�P�E@�65�K$�!(*�-��� �.՛�� "��Pl���'�����a^�7�l��S����{�i�zઌ-��y����ɡ�ǁ�'G���c���#��MZ���0����'�	>ȝ�:�l;c�P<�A��&"��Y
4x�ȭ�o��`�Aw�_a�>�N�֓央���'�4y�䣶/<	����w��r�� �<2	c��
L���vc`8 �0 
*��SB�CF�2̐�[��P�A�!
7y
��@ 	�B ppt0����e2�������o�D��c�9%O�f;�:'fW�=Uv(��H��N�6*]Dd� ڌ�<9t�8� :\�àO�⍇��)15fY$e@�]n 1�D�c��)DO�S�g�W����	��"2Q@a�3K�.���D"F�2�2ghP�T04���lF�x8x$�RB,<&�C����s,u��[��i��s��4��1�pB������N��E�)����Qw���� ѱE͌�1<BI`N�LF$2°K
F�O�B�I�wr�nZ����|��T����F_�P1�4���S����.�<MNl<��o��)��K�6��1>��Bg�PZ���%B������$�;!]8��ӆ�b2���M|*��'Y���p�� 0�?	\x/VM�[��&�>�$�$�M���t�a��5Ӕ^ x��
ͼ<�|�-ޢ�:[��a�c0&��r�KoiD��ä�)��y�Klp�\����p9k#��!tz<Ƿ��)0��/!2<!1��)"
2.��3̣��O���R߈>D�%��;7�`�,q���g���)��	�c��!Ô��l@8C����H09�D�} ��1�F,�L�!��X�2]d4����q@�6�c��!��Ea�1'C���!5�����CfYf�U8Btfe�b
1b�E3$��c�G
#%$��23@"Lt|�xh�\b�&F�K�9ټףD�c�1rhp !��ǹ�6x�KP��� (
aq0 `aE (D��0�C#PI�"А\b�*7n�Ь4{ͱl�d�Y� ;ӇI����B�ޜNsCu��=����l401hr/��b: 
>�E4  �  �0��}j4Xc�X4��c�0u���a���D ��@d8��H4$ew�<�����Ͼ����wdh+x	�nrv�Q�Jt�I�рc��ͬ�{�<K�����!�S����3`��P������$ 2E"��$ �C�=Q�J C		��Q��p0
���U��E8���K��W�6� Aw�<uZd0�f�C�r��T ����Đ.�bd&|���ȗ��u�N�1�L����`Jo<�?�bdx8��8"x����w��"��8ǂ�R!d���� ����@�$F`��u.���9%aڎ'L��eB"�����p	� tr@DD$"x8��q9���L�H�����,SdH�e
F�	  ���]X|��أ��>5"	�� Z�����H�Ș!Ð 2b0����P���utS���f���'Ib�`c�Cњ]���s���m�Y:�&���f�l�� *����`1K��`�BH��lnP AA @ nv: ����縍� G��v  �B@p�A`�.���^ ����F�e��:
�����h<"�c���ȰD���M��x��)�CF�r�2>23�b�c��&��0\J��J�d���s'��D�>El��P�0b��@` 0<		!�C�%b�-�p��!ˀkr�wc<DM����.�H"�3���� ����EZ��;�|����y�s��<Ƥ<KJ��L��Y.��2�A����ǥ��c^�Q P0`d(��"#�����.gxdi�!1�$���0$EE�dҙ(�� ��Qb�� p�9�G$�P��!���H) yH�,��Ib�C�&H(@� �a�4�r��,)�1d-	059��JR �������.@�� }8)\
x�pY��^b.�NDl"DP����1�~ �#!]��Se�l�Om�d��4��1�A4\T��Q0nr.@�  	�#�� 1�MM���Oa3��I�C�
 �Q�( ��(  ���<�+����N*�I8E@�d��:�0b,,�p�2�ty��"�L� pX<"e	�2hs���Sbʔ�B  Ap��.��[���:��2Ul���H�Ő!��. �'��H�PL1hu�(��t��`��T	��Ql�"�64��G�:
��$!�,�_��5f3$�?Ϋ ���:di���ORc,b(&#0	"�G&��g�]�4��f��>�P��@d�� ���4��Q ţLJ��D�L2�!j��9�!*:�X"��M�ψ)S���� ��ER�$P�	S3!���IsS�@  @� B��ED�&]:dr2@ �$,CD!���q�A��( �ti��`�>�_���,��ۿH����}>���0r��T {�C.f�
 ��xe>�nݠ�
����3H2 @d d@ +7�"{��x G��l#q�0�������1=�x��x�
�a����@��K?/�59B� �;wn����m�x2�D$E��"bG�	L�� ��P=���'O��Š�n��pp@\�8�4Ye	�z�l��>]>����
bD�,
��]��.��^8�]8R$e�l��E!��K`�E44�$�p�}�F%De�
�H�"�G|�C u��F�6���W�s<�!��4��q@��?�ddDu�3K��}+�2��EVi�e�S$&�HĜS��f��C5�Xl��l"�`,Tf(RB�ELD@�$�	� �	GP�� ,zLp! f0Ӂ1aD��J�M����K��>��"1 � �(h �H2��O�� ��b �AD" ����(�m�A k��.6_^�l�	�ݖ��/)�ԑ	T7��y�F? �&7Y�U��� �'q)����-"� �  $ F�q�%�qK�nO�w��TY�A�zH
�I�v�<��lc� ��=BB2\���MlT &
c� L��e�C4$ C&��)���a�t��C�@'d�c��Oq�=L�8�q7����y�x<��1O��d	`$0�!�A��T1�� :!�.��a%���)Rǁ��.>s`���#
��%���y����c��%&�0��uD��x����Ł���@���Ԑa�� �s��M�Y� �Q�QFBb	 �:� .�E0txBxj`".��@D�A2f@��x"RB"
 �e�K@
 GD�?�, �a��(`��M�=B�b p8������2**:�0(��EH�!А��a	$B�0�GL��%�ac�퓏��R��ҳ<B�!�;f�� @&2	�
�|��   @��� �X��<��O��=e��بV� C �HAeCB=b\F� .i�tz����A�HT1�.��� �s1̇���p��G�I�4��+H9�6`�J�i�`�=�\0BT,"B8F�Ȳ��8�c������Q�$K̘� �� �x��q�Ujty�K�3�l���B�*?`�	�p( x�ÈI`$D��&�����>%0	��P*T�y������`L�W���P��q��C��7�f�'� ��I��,Os	���թQt������)�"�q�E�s��0�)�Q�ˀ6��S��LI�s�B��u$N���ءDH�E�8�&R��H�@��Ay�A=@��Y2�!�e4 �B�*	FL�ClT !"5�ec�   �`� �0@��\�YPP�0%��`�� ��ĸDP(L
10S+���φ��|�M��` ��M���o��~�-�d �x�� 8-|>]��?�2Y�h�  �A�g�%`$����C0tbZ�T�01z�c���ӢE�,���n��\��9�BL�������#��y'��w�#rT�2����A�`N�P)PB�F�#������>�8L(�HJ�0!&)}�s������[L�c�4�Q	p�L��")   @ d 	1M�y�{���J�E4�tp�A�7�gQ��=�h�1�I�4^W������ʫT� f��2������"�����M��e�������:��L��>WX��� ���#�l�@ ��£3K	�6=V9������1���Ȃ�A( bl�@ ų�C�ܤ��=��$b0K��1�tx��CBBLb�z�x (-<(!�La��DP� !� F  �M
(  ��a���k�P`9&���C����3T4t�a8OKĳG	�L�$��" *�Q%ɬ�q�����M�4G"k4�ă6߿��jP�E	�� ©�S�&I %A���U�m�{�=5B!@�Sl0�_^���I6�$����	�<M�yV�X�`��.]��4��,�D$1Y�UT$�qޠ�#ꔀ<�����;��2�2ǐ1	y
�P��c�*��*)�Ȅ���o�*�Q����eH�:>�c*�n�YB�C�.y�y������c��  1)
�����c�>ߘ��m��>���UJz�9�ר�8)\Is̧�BZ)���  ��u�Ȇ��<˘�s���.�5l������d���eS!�	�`0��,2� db���Dg	�]t��`0�\�t�C!�
]R ��p��!_�� !�ac e"c&�c�H�!$x���$@>e����Ra�����Xp �(` ��@���H$='��)�h(�q��ұ�cqdx*E�1x<�PIa�a���Q ���x�`9�6�i��9�8u'Yf�;#� ݕ	p����������IbQ#C���7�)�;��C@�I��b�,��8�� U	P�顁�P�g�{fU��&�!¥�DCA�֛|��9�a�d�h��~�<�w ,�0�ҥC���3��C�3D��%"r :�
]8�� ���0(�O@����a�	f�"oQ�Y�.&n�f��B�1	*����p#P ��� ��tT�O�J���d�),(�f��\`�N�G���
�F��� ��Q	�H�P��c����c��3�%��**#�`3�st�3t*�s�=֡�@pX�1:�1c4ΰ�@H�I��"e��&"E*i!qL�).-(E �x8l3AD �@�� ,�F�۴��S�0RDl .	) D�22�g�4�A@d!�
C�18�^�0� ":���I�(�!Qp�X2"�a�i��l!$"����X �U0�_çN㋣!�}�������:b����_�䨐�$Q&CD��;m:�uM��H⃱�1��$˿�w��I�N�S��I`�%�K��������J����#0!(0���${D��8I�.-6�Јq��Hb3|v v���r�m�H��fF��ۜ3�,mT ��	�3�0�ɱG���=f��1��G@�e��lZ1q�8��$���W�M�*}b��	� Z|�?����PELh�H�@+�"�%bb*R)� Ց>Ϗ�I�}�(��}�4�<�E�a�3@�"" �  	2 ����L"���"D0��[�q�>.#���A}����&����qJH�&�u.`�&�� L����>�̡�(A�d��`dZ�AQ��(��'�����,� K	H�(�� 6q�������!!�# ��6
*�B�1@fa	��@  ��hH8@��tQ�� ( >D�QZ,9����JN�ȂP
�	ŀ	�h�PL$y �iᳯ	�h$Q7�	��3�cRؼF�$d�E��� �)ff�������BH��A�X�3B��K������H8�c�,�we��k�:��tȣ!����`b�t�<p�`��#��A@�}t����.�f�Ͳ�}��&�:?��L�"'��d�C	�<�p��S�M�	= ��xb\�`���F���@���R ��m^`�>�c��cR�c�*x։؃C����ϳU�D�
�   �V��j*-w��n`6X�
`��8y����`�bH}2-�� 0
@$FBe�P����d�sz@ʌ��T�����"�ÀK\G"K��� |,8Y�8 RzȔ����"�I�L��s:�����Ƅ
9lb4(.�� �4�FXRRp�[�ԈlD40�\� fD���� 8��P$Z$0B0)v1��D�  @H ���Ѱ�Q� �0,�ǀ�6GD2s#K$aq0���c �Q \B4"8��
mRD�aX����ڋ���t8U3fe7I�����ic�$�����A��}��CZ��-�`(m�t(�`�3��;��cu0�%CB�h�����iB(i� L
�4lH �M�
� i�4M�͢C3�o�\a�/��'f�'x�7��Ez�3a�P�ѡT%�Q�B)C��@��ED K�'��d��C�Čq0�Q��Aɓ2@�!�P�8���T�s$(�`�t�r�
E�������=�c�K�KH  �@�*����"	�$R"?��		l�'BWI��IW]�����6j��Qf�<
E �C`�)�h W(�y�#T$�?�l d(�Pa�:K<¤�H�9|: X̰���	:g���� tt& d4t$$J�@�ɠ�%d
FQ,�� ��yn������ǠH�)!̐#lbdJ(��P����� H��-��a 	��bA`8.3�d�`40���M��qK0  �ć��B�	h�f�,|$� ��Br"/����'�9B��Y��0>ړ���C��>�<��y~CAH-z��Ia��;���N��	�E� �:9lxv��c�\�p$!P��pQP|�� ���($�3H3V�����&��A����A�C(C^f�� ����1&��	�a�	aC!8@d]f@��Øe���R��.!S��
M$��:7�b���w��CV�e`�>[\Fd�G�D�&_��?�*3h	 �A*@���R@,�D"����K��,)����Sަ���>><L��( t
H l�!#��������BH ����� ��&3H��  ]LL�La0lD,b(yV�ӡM�E\΀�P�E��b|z�p0�̴����<��C`2�x B [t Tɣ�ҥD�,>.c""	��EN�>� nZ91�������� `.>.}2z P@%�OD0(ʒK b148:��B�,1It|8� ��7K�&"pi1��nV���7�5��aC�le�c�Oq��_�rB8����Ƀɢ����_���g�*7X�Q��F�2(�y����?�8ut18@��Q ��  A ��w��Na�.A�{܎�:�̓p��8&f@B�e�>"'� Dxr@*}\(������L�)��7���	`�T���]:��8ߡ@�!] z���į2��wpH1i�ST\\�x�_�oP���%PF�X�HQ�JA+�R����5��a�*/b0�C��M��)��1M<t,F�<�'�ca�ӣ�Ð9'�H�;X���!d�p�,T4���Ę<&r��a�g�	�p$��`�1�b��	�bH�"- p� <"�2~�.Z��ysx�^Οj��8�.C<E>SL� ����# d��	CTDbйj?k�~Tu"�H81��=�!  � �\f��nGR��O͒�����hX�j:,�D��X�`��tɡ�iA�� h(�&�]Ӡ]����q�|��2o�`����(���Aփ�����x�a��|�V�#F%�c��1�ġ4��4�?4��sL�5`�H�[����O�'��c��C��N������� ����D�zn����T��?fL�R!Dc�s����:	2|.�0�|�����q����,��Pʔ��6CR|�l�A"�De����g >��%��&g<`�Y��,� DJ�k�Ƕr�$�6W�	��P���dڇ�R� X�J�� +�X5Ua&V�.-T���2�Gy�+��䈨 R � (��3��d�ʓr0}xt8,d\��1�9e�S	��B���y�3����������¤1٘�'�=�L:��d�<���g�
�q!,���2)�� ���"s�DABL�A#�@�q(9���U
H�CB�.։�`��0��1�E�eT����A�����Y�!�F�7�Gj
���C �h��5����S$�����XbX��6��XrĂ�r�pH�s��1DZ@AI�
E�K�)Z�8��a���4�(���i��Cw��&����9�����n�Ar�)�9�f�1�2�'ƅ�b�Q�� �B���������z\d��8���FƘu�wyZ�F�)�wzu�7�`H�#�}�>$� �?ʏLZ�0?����fy���Z%�߃���"��|������ŦNDp��(r�M�2#X4��|����m��e�9���<z,��_d�Ӝ��Xb�6Y�t�̐{�,1������ ��l`�,�r*y$�� ٓ������r'y��c� @�� � ��Ά�R�>1��j 4x~�߹����� �`#q���_o<j(�t@P�H�f�<�?cs��R�"����C���ɯS|iMrLa����]�F�,�Ez��q-�FWK#�)�A��P�uj6aH
DT0���G C�#�A�� ��N�A���Mo�%`��dQ�!#�Qb�
T<�e�). ̈Ȕ!1	�J[�5��r�S�z�-��(���R ��1�	:lq���x�)f��Aex�l!��E�r�D��X
�����cH  FGC !`���4Ct(���+��Ѡ�I���aV)9[2��$����N�}�F�=����tI�< ��pnz�#��)5�K&t \	��D
��ӡOfso��Kl�b���YH)	���Zd�?�!+�h��?[�'�)��G@`����q�-������"�nV�Y�E�Q^���e�
 �@��#�F�m��Pz2�����e
|���:#���(���.�|�D(頑a�E������=���3���hl�2DG��cx.b�#,�|�vį��4��n��>߅�>&�`��Hq P�1]��h8 4r���=�Q 06	��@(�ƽ�?N�:�����4=B�T(����Pf�<���t	Xe��t���oLv���> v3�.m�s,q|R��lm��1�>y��Xc��4�T�r����d�6�!�$� ���N�*�
Aa�&&�PD HJ@H̳(Ȉ`�t�!�H�(S�c��PFɁ���H:�e����~~�$�u:D� �K3� L(wsLdH����3%�`�s
!� ��H4t|$D@��� �C%�N�0���U�+ 4(%&��(�.����_���%�� `��u�(	�&P�%  �A����>zU���,Oa��� ��e�zt)�
�����3��n<T�i�pBT�X���'E�79#8�5I�B���
!*|B� ��)��l�Cr�@D�&�G��e�E��Y:|��@@#1���6yvɲ��S���b�1�E6�`҇RE�0Ø5Ы;��J�Wx�2���>�" `1����� ���yf�JS�D�!@A�Q���e����W#���A�>F)A�e�< 0Y pz}
y@�w����G�a4R�$AJ�;i0�r��AB�����p�>	�S!�E��*G"HT�b0
��m(��*M:�$$dQАI��qN� ��c|�l3�G"�c�5�$)����hhH�4��=Z� '�p �*tL�~�>ΒP�8�1-'�2n��H�c�tt�$B,0
. ��e�Q�`�`���DJ䪾�O����eB�� :@�CLq���:�L�%��`a(U� 4��	 ]@!��H���'��Bg�(9|.��u$yR���w�2��#�$�v�% �!���ɱ�GB�:����<B��,M��:�
:D��C�"������B�+�>=�8D�Y��%E�@`�X��D`���T��ͳ����f�ۼ�}\ �+L������#p�U���= 5�A�>X  ����   #�������:5�h@x���@�6��L�'(�D b �X� d�l�p� y�E 0!3P^�)��H�%M�1ÌR���8G� �>9Q)�� "Mj$=.܃�F�'D@�Pb�?! ��'A%f�E2��)9$&�c�%��;�qD�&),���d�	۴�h$�H�c�k��q��~*Dx��yB�<]$��xrc�GP
n2$g�6��="%
aX"P"-�`!�`�}<:<͇aՊ[s�C+U�H�(>  "�� �
�p���0Ǔ�\e2�!aǘ$kLR�5�:� ���B 8N�DC[Y�x��d��8d�,��	�A;�
g�h�i�3�A4z R�I�H�V"Er�$:���쎾\�z{���&A�|�+�ZMR��Q�A���G��q�(!��ҕ������1C��8O�~����!�0��G�:̃H���sx��9s��	�h�<�	�x�,w�Qd��1�Q��n �!��!�e>�ǙC� �Ƞ�   �E �gG�F^P@ȋ�@a�{��q�.�����>~��IA"8a(��8��L*��V�>c<�O��Hl�,�&�U��q���ߡ�,�$U�b�c�I�S$ ��I��� 


?$dp�)2�IcP`�23�`��� �C�a�#F�������&%��F��G0C�3��%8��r�,�tH�����@%�J���8Y�M-L�:�)}O��b��I2���"X= ����Y�n>�p�)�Ʈ�Ê����V�ȥ���p$��G�� 0�L�BX�[���vU[N�Β��.QJ
$	+"&���$ȑ$&Aq���+dHB`HtT�qS׈�&gQ�b� �3�0 E���Х�}��!�*��M�����@�%�0Y�L���Ad�P�@��N���'�>o�q����o1���̣�SF!⒥�3����%<�"�㠲���� ��a�p(��כ���C\R���`���A����2�  ���#�L
߃��f  �%B��D8v���Hc`0N�9b @�V�	M�����pz=�q�AP� �C���f���t�c\�,
D��_�\'d�}B<0�cP.�` ��	  ��0.R���(Hv�ÑBpI)Q�#$!%!!�@�2�(Ѐp@�M��1c�i�A����"/��f�Y&�$�d'-��)�Ї�RMt�H�0@�aL�q�����)Ș�(�PA�!��b$����e����Y� I,k[�o�>�T P|(  qi�3D���d���M��b���K}�Ѓű֢@��ݮ�Q�3@��G�$��$����5:�iaPb	��H	�&
Y�����a�xD�Yj#$����$�gP8L���0�m�^� "������O��1L,xP:��X���d��p�	`��>����!�CL�3\"���I ��x���9{��6+ޣ�G�1MLVI!xH<���@"d��0��>
�Ӈ ���T��s\��� �@��� ���������`�hD�8J q�Y2:\�]�K�2�T$e �������v��4�٤B�>�;x?��Ƞ���$��u:4I�*��s��C8��X!"�yb\Tz`^'C�>11�����@�Q#���4������8px�:*dAP2,���P��, �2y:�D��2����2L� |��ۚ�s	�Ql|vɰML���5�ǒ�!-'P���	��#DC"�d5
!@�
Wx�92|�%ꬳI�3d���0& +@} T٠�$�d��G�X� �F�у�E��穳�`��8B�u0G@�X0618@�}� V!td�U\N��Bg�	$�����Ð9�4��!(��>kt�H,�>��18L�W����HQCC�� d�ژ�HSg���Ӄc��c�P|T 9(o3�2cvy�1�)<6uDQS@��
��e ��PX�)N)0%d�}Q�M�5Ι�r��9��N�yPA�Ɔc��0}���  -. �`��g�Š�80� �D�&"��.�����7�\c�*�濸�5�0Y(:;�Y�2�B����L�d�A�^`���&i"(1I
�ş�H�GCe�C�� 5.q��b��0�(Ĝ�O
��D�-2@�L��@p�����,	y� 
=�,r�:z`Bt�x�I �#l�0�clS�� }:�h��B�xH(5�l�!Q�qD�:���FGC����Y"d��v��Xb�,�p���0pi���d��=l��˛��a�,�����K�1�ť�Ca��Y6q�3L��y�� �|�2��2��t	I���O��$��J` ���H��A ��	�p�}�b������ib�B�O���)�l��$�0˟p
F��r�sl�F��|� ��6;p�	9�!A�U&�lq�E<(\�)�"�X�-$��!��|�-�$4��!���>>I�)Rfʘ.uڌX�	sȼI�Uz�\�b#��
c�b��/�fB��O�<K�.s��7�i6��O
q	���Y ��� :(��66�p$X�_��4!�����j>��r�)��<�)�HR�G�A�@$	h¹��x��cJ�u2H��s�/F8C	��5׉9���	��PQ�AIY	,4T�q�tه�1�L�B��!Ā�2$���P���Q�@�>��(���>J�I�6
.J@Bǀҍ�q,Yb�(��a��D2j�cv9�&3
�p��>.*��b��Q�8[��piP�ѦN��tX\�N�d�A��9 '�� i��(s���R��-(P��r�3b�#��(`��<Y��11�$It�9�8�}֨��<t��t��"C�w1��\�۝�F�9��o�D���yJ����&C���!q�ȓ�C�\ư	� ƀ҂�QB�bq��H�G�����C�  ����>�=(O�b���h���&����)3�@�]���a�t���9�h ��"�'���:=�c2�K�  ��R�HJy   �  ��@���1J�&�	46�74I��'M״�����>��3�"/SA�e�%�O�$���vVi�@��$ hHt4]��~����b�B�{w��� @�=T$ F'(b\Zԩ�d�*1�I1cl� xBz���ҧɄ�#���"fĐ)6�ӦI�=�Ce�.�r�$9�S�;A�xp��x�@X$0���`aFdHK �:%"CB12e�{pD<�A�@`��6U������֤��i�L	I���E�!&�=(>i-�wʔ�&�Xd��+��ơ��ܟ�Tq�r�-��$	�Ї������` I�RR"I������EN����"K�b�/R�6�fL� )��0�����!��#K���,.6�� ��.}bL
Th�D��a�mL�P�e»Pd�0$$d�!G@��1d�6��1O��`�% >	�&C���
K�L`�,],� h�g���@�� ���c"~���Q�Y�,pq  ����<Q���B��*`��py}f
L�
)4^��b��O
���,�a�q�S�0ɡ��;�� �,1�4�-�h "4&9 ��f�>=���ۙAgH =H��vz�M�MA@��� Tl�$�$M�.*!�<R���% �Ѡ�D�
)66�A�ɠ�#�*�-$	4n���a��V1�Pёtp�A$����65�>�!GX2��� b1�3�cĄ�� C�ؤ��#��U>�pJt)�Ħ '"�C��5���r�>�H(���A4v�0�,1m��c!�b"R�� ���iJ�"	pq�Q)B�P�% �u%JbY 3)�*v�i����b�|�/Q��B�4$�	��;O�Q��e0u<>����3�4�#$�I�D�H!1Q����1cJ�*�0��d,Dj$�XD�� | 
"	]f�b���Y ���2cfH��#�"�*"�5��FJ�5���<�H��<�<�"u��:?���Y�GԹ�kD0�|�O��6 �U^  �� ��5���L�KA
B�i���YeI��b�-� B
�|��|�{���c�e:p,f9	�q+� w"Q���x0�p٣I�	P◑ ��d zJܝ��[�!#?$�#�`�$G�1R����KD0 �f@��`R� &d �a3!"�<fYb�}�D��J�4P�c����K����}81i(!1B����##P�ѣ�A�Lș3#'�iXr`�ƈ
���`��K�>	&pXg�y�}����b pH0e�&�9��③H�� L�W¡��lP�M�VW�"¶�H��a���g��I2�M�$F"�     D'�|��P_&��&��N�+Pʽ���o��9H���k�*4��"��9� '���+|�:D�  �%�Q���d�e��!�a�<� ��0b�:CBr� &  ��gJD�)�h�S!���,%D� L\~�bN�����$B��(L�$pL�ɑe�pl�p�f��`BHH9"��y�[�f�WH���  Ɓ�g�F�Y����2n�� ��&o��<-,賅�,�d��1M&
ĳI$  ��IPz����m~�c��8���5n $�!A���ӢA�N��!E	ȈD��6>!�}|,|�̡�Qa�~:����j8p2H@L�'F�3L�&
��!`�qH�):j<}r���GGMA�e����ܤ�IA`Ą�0Z t$�4�9��.
Y�d��C�6�"�<���g�|Z$T(*���ٕ�M���f��i2bҵ�,Р� �2���܋MB.B��#�  ��	 ���` ��"��I�����M���b��C�=��S��I^#�l���A*�Q1@HB0��K�*i!�1)T"
\(� 	&!1b��y�'�r�:�[,qH�Tt*����r̈1l.R��^�
�M���	� -��`�������������Rf�k���+�� Da~� 	 � q�	� �8�,�H��
1HP�'FP��b �׸D��THB}�!�0���D�X����@���� g��|��aXh(lP$@`�p"<�PI �r�=bz��E��I3��cN�aR�@ e��"<)6̘.>��T��!��	�c�A����<ij`(��.>�CPF&,�� ,���!!0ĐH"#��L�4�$���p8���yv1���\�)��Ɨ	ѩ�iR#�C;L���ccb"�C�!���J$2	Bo�"�
xe$�d�I%ǻH ��A�4*��,2� 2 @���2x"���/Q ���~װS��r��8/w�sU F��fHA�� 'Ye�#���p�$ � �f�>=Jp�d��A��g�26!%BB 	����a�Q`�Wh���&
]����G�Hd�����F�
b��Df�I@�B���"rB�k��rF�e�ls�M�	&:�'\F�G
�Sy�ߛLOr�L � ��67�~�O�=0����������hH.�3I�>.s�r�0��4�U�R�/�[�Gš��L0�A�`Fb0A���#��F�H����8� ��2~��Q3F ��6.���p�""&@��>)CH���ɐ�F��3d�=P��>'q�=r��Z�� �6  �@#�gHǂ����� �2"}�ǒ�!K�d�ls�%�e�4<$���g�I���&^�6��8	N�H�:[�';TD{2J�l�R�'�M� nńe#�ڀ`Bd���k� ��'�湓k|'�+�X�4"��J
��p�A/��,��6U�Q+|zx��!�0(yJ殜��-�.3����ހ��w_���kz۪�4�p2�%d�pɒ�4z�N�E�	�!ɑ��C�F�,�-�ɱ����K BD �>*�! � x�8ؼ�3 r|��P"C���qJCb���s�h�B�(�!>���e�ǜ�*5d\�t��ﴟ�b�
���x�M�*g����ENq?'%	���.�8
�qY�0N�ϼ����5l�X���Q���3?O�0��=�$dc� �V�@��l�*�xt�:n�p������]��JFG�&�!��Crt�D�ʴL��LKr��I�Υ��S�|��ٳ~����v�S:!%�1O�&3�衐a�x4��*��l��I�eT�դ�^�oa5���� Qg�2N�&�4f��&s*�uZ����IDCÌ��[l��>:<���_+Tr,�͙�FE�����/�(3x�����K�cV��xs[���e����|���DV�>�"��@�6q(Y*��$ �-���x�_y]�8$c��p">9iK���b?�?a�Q�
ʲ����J0�J '(�RC�w�f��j�6}^��$�����'۟��#�[�'��7(�F���8E|QF�!�$�ҡ�(��l0J�z%N�c��>�@��ոC��N��&�B��s41��A"A���"�x6
���x:N�~<���v���0ZF=���)U�1(�Ef$����Y��&�� d!A�q8�Ø��Dd9�?a
�=cA�7
T!  �H�	"& �g�����$ćs�EVHq[������b)XC�P54a�M�+YaJA�],���v�¥A�)(���QQhD�6 Ll��S$$61}�6����:�mr������[p{tk�Vo{��m�6��1"�f�	2	�����@�@t�
9� ��ߌ��rH��k�#� ��Jѥ6yqdl2f�%'H,�l00��H�xBEd�gA�A��:i��]$!�6w�������#� ��� ���ؿ�}���#�xy�g��� �%��(>�5��Ћ�Ȑ	C�<���8I4�Lq����l�.�vx�	Sv��L��(V(�z'�ӰI���L4B�DPT	yb�*�/�%&g���$曓��W��Ǣ��sI���`Z8hب�`b�`��D$�h�D���-�N�� :�4 A3ơP �CYf�CB-ʌy�	b.9� ��׸ ��>?d�!Vyc�E<�q�!<-� .�6I���.���¨⁘��r�I
f�L��g8O����T���tn�5��@`���.*�*�:gXL�v6/%�!�y"jd8BNtbң�d�\d�(d)�����2	vi2&�b�`h��>&5:HlL$�[����E��̰���hTx %O��>��$��8 !.�:� >k`�������I�]Td� tr ��6�dD,kL��1!Q��qL�	r���#RAl\(>.:� Bи�X5���  (��Bڐ� ��an�Ɏ6�,�����)�DE�'��	���`�X&j� lH��
#���e���^T)��
5<v��a���x���Q&��
��A vچ�� E�
&� \�b���%Z@C%#F��Q���I��؇cSa��4m��ty�:;����ҢH��2��@0 ��2�,��G@�^��EB^c�z��\�6-�d0H�h�L���B�(��F�9 ��:��dh�<zHļ��\ �}��������l���46���A���ކMѐ   ���ࢠ ��<��<��.��"1y�`�h Ӡ�0�����EAE% I�#C�}3����
=��`�`ÈQA��	a�XI�͚J��DdYB�HJ�.1�@�FC G�:S<��S�Ǧ�J�����O�K�ܩ7�/:G) ~���!#n*��d�<Ǆc�܇��X�`Lq��SD�@Μ�=}��A� L,R �Q�*l��	  b� �M�l������f)�ޤ�����s���(*Q �b� ����RTt�J�aƹ��9K�� L� �h8�٣��T1*���@hP"|$��8�<����:�����0�IP�#1N  D#�G��
�.�����P��%�G��))�N@11��   #˄65���3��q�J�5l0��� P��)�+�й��B�"g���gy@�>���#b�y���G�15RNH��!��:s|���X�f��4;`l�y;��9�#�������@�  G ��w8�E�yy��h�1$�CXŧ
@����.&C�Y�l�C�0|]>F̫,��D�40��b([mQ�u6����E@�MAH��$X ��xX���gF�s������xDL�����A�$ �I�iSA�`���Ҕ>t+�AA�������� 3��"����&'csXñ�!,�SP�`8�A4 y$�&� �,�n�-O�p(Q, 5!ѳ�bJDB�Gx�:6[l�g�Ww꘤��=M,�(hy��e2��[ub�	��P�$I�0��*Cl��p�T��#��I���Ï���Q�hbb J��?���D��`�;X��29O��)��듽Ks��MA���<-�t'���i�ÉQȑ�?�!��Pc� ��%��`�O D����zL`4��4�I�@h�)��a�
�X`��p��Т��26u��1O����&�t2��>���=J<��i�q�sj,�.'��I)�q�KD�����)NSV �⋩�!V �8���y�!�mHR���4\��1��&5��Q����S��d@�b��҃� zޏB��z�}>���� S�t>��!�I�4
��y ��J���6 ( r�X9#d�	9v!P:��8HL
��d��@�d�*]	3�E[h�İ�c�U������A�(�)�a�)�` �l�pL� :�>&�El��#�L3 b5��!�����4I�
�!	��:סXp�y�׶�m�	i�@�&��{o�ˀ�'~-
�!@����n�y���&`�>MF谏FB��6����� `0�D'�'��-^b�K���ӌs�Ҁ ��Cdy�;�B��@�a���A�P�`����2}lb�I���Ѧ�C���<�a�  (>���,��6nD"��p� 4�#0�C@�*2*.M�t�P$�G�L��C2H�|�ϳ��
�S�9ֈx�
�a�gB�
�x0v�rv�$b�9ꨔI���u����GPH�M>��`�&]|b*Y��2��cD�\T
0�ц�.o�.��gN H�F7'ߊ�Xؤ؁�#�(��#!0":d(2�4��@�c
#�OB�J�I�1EB2	�,}���xD�!&� ���CE�XCa
��82ƛ��7�ʼ��<hbC��0$����O2�%Jv����1@p���-�h�s�p�"��L��\���y�b';3~Ɂg���6~ �"��Eң�Aƹ�
)&e�b�$����B�&!3�U���a0	��G0�it�S���S%�e
l����c5�� � �� �P4T�D��]�3H:�(�u�Ϡ����p�f��`YlN.pm�g��4I!Ɂp������ I(:�.>%��5L> C�Cq���Dw�@  �@�0�$q�@	��P ���H@ e�|�+��50�Y��ʈנT� �5~
�Cx��6�4y�3\
4��N�+�Hx�-�4)c�����LR��$������H@��U� �@ `���s�}� �H�1��1ppaH
��G��o�>>�4��E�rF֋-�x/�� F#&8��������a���`x4,d�a�! 4��t�q9eBLB����<5  $�a3LJ�0i,�՚,p���=  6!-	0 �k�ҧc?�Q�a��1�%�`3Nr�:>)5T0	"8Oi�b��M��:*)TR�2L����F�@`xx�O�]e0�d9D�2�<� q��4(P��G@�&"0�a*�ې��]�T��X���G�}-;� 7� 
���@�>/?	�Ia����-���}�G��I�3�=�c'@x��Y9C\��St`t����a�Pe����+����)Se�2�$ܧ��   ���3�!5T��s1Ƥ\ �2<B�Ad鲎�F���\�}��9�F�[��<}x ���Q�J��6��f���2+< ��)>��K�c�<Ļ�S�a�C�%��*yY�~-������c�u�� *Y@
A"� 0 � 2����2.���8��{XT�B ���\�I���E$�a4 ꃋ�Ǩ@���0@P(!-L�ILIJI����� ���:#T|��,� #�ǢC�u\DN`D�Q�#bN��
̱ ��� {�:��D�d5Y;��1��[l�����5B hx���R&[����4GR���ؤ����l1�K�+�r�uv�"a�+�3�;|�C�:�� �3C�.�"=4�T��b�Ɛ���f��$��g��y��y�M҄tQPT"6ô�p7�:���A.��u.ӧ��5g�@(��]�"Et"�h�A \, � @}���g�  n� �� 2y4n?,�"RA���e��9���P	�I�9��&O�C��LI���������B��"�f�M�%~'�� d�9��)K4��@�]T���gJ�:�� 0f�4i�%�"���t����K�x��p���m��P�a��C��=^`�u���GH�!Σ�RG��@�	�A蓧�;T�?I
=��L�@ ��� �2�ȱ�E�u&�8oq;�@0 *[C����2�����8O�)r`b  ���ʌ۫Sc�Q"����b�,���ap�P:�rB�,2,c�@��E���.�I����E�d���B��Шa2�s�l	�!)�7���kLɏ���u3>2��� p�/�,n�6N�ã��$�1̂�1:����H�0>>M&ɱ���|N���0]0M� F�Bhq�<�l"���!�0"��5<���e��*�J���p�����3��<Z4��:��d��|�Ü$�BL�$ �!���}�  7�R�9�@	b�A$��\� LB�����C��� �
.)"�� �O�s�.�9� ꈜ @�O%|Rn��6�19�����p��P��p��)�<1�9d�,.ӇAH�S�ᄈO2bȇl�#p�1Gl�@�&9���#�b0����1)�P�b ����4���Dk  ��P�9=$�| i�1#�50Y��t��>[,�q�)��_�C9�a6
RBW�0G��A�;
@P�!�0�AP0�M(�d����Rd��t�#����"&y��2&�0D*��`P>}$
�]�$��y�(�lF{I�>*���"
���_v�&������% 4�A	HL@U���'� ��3e�̈�hh0(�dIӡ��� ��A���53J�������r�
<�Pf������s�i�x���լ�@0��K�U�`��ͮ�`zD�P\��  �Dh a���@��옝2�`��!���IA  �@@h�-�T"�g@��.�0@080lC�kz�\��6=v�	�@�j��E�C�X ԑ��'�!぀0("R6�,=Q`R! b���A�c��8��?λ���Ӥ��>SRz8PFg�!c���"�<�B��r�B�c��H�K�`�`	�s΀M�	y�7� ��4��X��8�S`�u�
��a��&�QNeO��D��`8	��� i���c��&QГ�����p����p��'H``A   �hl�^�J@  C=NH�A8X 5�l�/"��1��@,Jd)@a�qJ�x�a�2f�)�SF��F�c�&!}l�T �RErU�0�QOZ�H�0~6&m�黦���M @	�BP������d,�أ�e�5�D֩�b�%���G��"(b��e�
����|���4I��!���b�@rGAOr�%��U.�E ��Sb�����}�φ �MF( Q
 H�`%�UH�2��*��XL�g�C�-�ue������C����!$D�K�>L�$�GD�4:���4Ȑ�B�5I���AD$ 8DDڬ��.:>J�UT|8�����Q٦O��yB> �,O8D#d�900K\F�NϔeN�ˋ ��g	�SV���Q�P ���s@�O�c�#Tڜ`� �E���Shq���y�6E`�)�e��s�Le�o�?A�$��P ����hTBT ��`! �5���:��Qdʨ>�7F�b��%� $� �t�Z� ����H�y�`z��$x(���:�!Cll pT�0�e�*��,&%�����1�6����Ic��f�&{�O�(G��Km�Nf_~#��u� ��R$ �"<�8z��<K$r�@�eD�
�.}$Yr��q�Q:D8�1a�h�#��蘜G�Y����E�I�   KC��la�sXL��;<"b�I_D�;@��&�I�����@  �`%P�P�2�H�f��O�=�$�����{����oUv9P`�`�: �ŜhT�:����(�$M�B�B�:Y�1�ߺp�"x "����!��>>�`��eF�c�C��̄.�[�Pz��X<��C�A<���E.�Zl`�� � �I�J�&"u�Lq���lr�<o�I���
S4��
��\�0�����G�*mb|<V��ޞ�Q� &�|�O��q~�!l$� �@����*���� ^)(/��NI�/r�a,�����Q>�}� �E0b$�@��A�"��R����c�)|8b �y�#R4T� (<��2u�x�>CtY:BTFq��d�2I"��Hb��X����7y�ͳ,Ӡ�1��r!Ie�U�L ��^\ x�y���X�^�d�uZ<�:
����+6���a�7���p?��&wR`�,��=1[�l$ �� +.- !y߰�5�����I�,��~�(  �A   �   � `BBz �Nr�wY���9�A&нe�!� ���	+�`�������� /�=� Y�3��:��M��%����  ���*�����C���<6yf�6����Y.R�C���a���sj�S��>O�|�wQ�O���Q$��J���� �􁬠�.Wx�"��$py�u0�d�m��0�!t��Xhԑ� 4jT��o�����!!K
 &����D űQ.��V|��a4x�>(���Ϭ�B�u~t�4�����D�H�Z&� �F�8B�E�`����CY`�E���!f���\�c�56Y"�q��!� C@�O�y�3�(�Ȥ��d(��#� @�ؠ����e%�0���!N2L^�R�0o�!�,�|��3�i,Blm�&6]� �B^�y�iF��=���"��x�>�2�0G��Hd��$ ��	�\ � �� y*���4o;�`�1� ��  ��$
  8>� b�u\�����>�� � �n| 2�!Q�_H�@���C�AHL�/
b�AQ��4-�H���:�qۓ���+��I� �`\8 1)�)x��A���Pf?���4�Q��H�	
2W�B'$�g��*�523��O�%�<愧(Cx�	9n��.��)���L�s�F�1�0�q���Q�Y%K�$w�'�[��9�i��P����
GXC#&��>�2:y\���ync��ba���m T$?� �.>k��@Rd���2�)��^��+� Z �P0�@B P����߆��1��������S�E��d^EfBL�#,"o����@�(b�M�: @$:i6�GpG� �*f�#K�n�h��e��y���8�ǬI:�yv�N�ƹ, h � �<J��y��$��c�� j"��f=���4! �-໪%�皾ɼCs�}CY3�B��K������D ��A�P."+��	�@� �!� �Qd���[�Yƥ����` Q �q��H=��X�v���\e�ǹ�ct   BE+� C����bY�D��OD����%X�E��ဉG��F�e�p�K�'�3\���O�<+v�������1Ǉ�$(p$�\\(e���5��W�pt�!� Xb D`��1�!��x�	���aPL8#8.�!�1!3����@��#fx����o �*[��Pbn0�	�̰D��FH���	�b��dPHP�
%��jB�4��5�?M�#�ǽ�bcG��#,-d�����I�B��]
����G��.�|����9�4  Ȏ�!D `p5�2'�Il��	N��\f��:\�IQiQAdJ���A@�t���I*[��.������j��y=��f�����ȑ��|�#Od`� �z���yjx+Y�F��5�;y��9����CT�����H��ᾰ �&\�"�cvad�Q Ƽ�0��`��>��Q���L��n�0�Z  �o��e�D���D�h	�.H*�,�	o���Z� ��*;��I{����%��D�Q��,p���
�(@������}�`Bmt.�p�-��VN�  E#�@z�^����v��(�����D#$8��q�CQk���J���H��I���ͼ���zy�}�������wB"F�f`0)j�6Y�q�\m��d��
\�*�EQ� #���W�¼Y����dK�<��O�q,���8�P��b �d*�a��C Z`"͒Nm�q�Y��:
���H ���V��f�#����R�n�Ď���f��pl�8�~��DM�>n&B�G�  ��&�r�6� 	���9 )��ASа� T%<ybx�B��7�@]�%�K��0�p�yDf�H�Ah!��C@$ K�HyU,�r��|��,�P�U)�^#O��
e�p����
)���G�.��l����(�0n��\y��h0`�m$l
��Op3$�\.+ D��  ��Ι��Q��0TB|R<B	EM� C] ���f��<��D"W#�
"
�HdB��(�%]��.`<�N�=���NIu��
;lr=N�UJ�8�E��0�G2���n�>]*� w���>�����ߴ5��`  V�JP٣̒!CF�.�T�x�a��ct&&BB1n)h�#�U�$j�M;u�����d�/ի�7��8���!�8 lT�=3k�ifXg��"�Qg�E
p��PC$N�*�iյ��v*�R���V��	�'���o�o]ր��̜!��"�O���E|�$��I�px�*���H(�¢��u���+[�6l��}b}�[�Zv�ʶ�Mv�Q8G�E�C02Y��7Oe?�e2   �I�D�0��g�D� �$��-( ��'OBʏ+[�`pTt0	�AAbb��d�F����"� 4L-(:��,"(P��B�D����������� H8����3� �1�
��bQ�ɔ2-.�I^��\d  @�0b�Sx��@�p�{(r 	%�N�a.�= �A	�A��8�)�;)Y�e��� �
8��XY��Rp�A���u���@�P���L�K�L��'Xg��h�e�E�w�ۙ��)/���@\$p�.�-Vo�"pG��ht���a�@G��á8&�ma��p<Y"�t"T�TI�˳|��;9�! B�>;0��E�.M*�tɐŇ2@�
�Y*t����������0�(̾�:�!0���^Cz� �1��ca(8N��H$�g�<��,�M�h��j�����d��0B�SP�X���˄�.
"�m|�7BvU?�K�(�@!(  	�)�E��
  �0Xq4 R02Y0�����#��HE]��K!��'���H3n�2a��2E'��"�'�1&0�`3$G�F@0��g�,.c :<Y�)1f��wp�X���3bEt΀xX�S�)EJ|1>�f5�@a 0�  ����5��3�0� 	��QltaT�z "JX���Ų�����#�*	FLY����F��C��B
�@#��Sp�5�ː���XcJ�!�r����E�$�z2*J"}V��<Z��a���Q4�$�t%z0�����$�DhX8xDhX�`zD�!� b��Y�nM�S"t:,�]��N� @ƚ�;��]�I�L��%�*9D�f��/F�*b��Eө+읪�0E$��J�3�̑Y�!���u���(�`f�P�@�M3*.�T*��B�91P9���h�%÷�%�e�2s� p�`�9`@�+��x��9#�Ae�����5t?�"k�  #�  "  @H��`h�� 	hR	)F��_5$�
]jia����=@f� �C<0�1"
'E"� ��I�̈)��c�ct���!�^�C����<+���n����B!$@Df�o��gYDR@h$%+ @���u:\c��� !7��8��},���Xp��?Dgs N� `�%٠N�����0	N��C��p"$@�2�x�������:���a^Ĉ��G��_�r�����d�Q��A  EX�PO\c0�@���  $:N��!�( 89�� $�5ƝI��QP�ArO��@h�S���y�8�(j�%��)`�"b�p���e�<�,��j:w����Y?J��R�ytM6G���Dսq��kC#�����G����ED�C�y��:gT�4���+!p��ޡH���i�����58:ȤdqAXx�h(4�} '<ϧ�ydd��$)��S�A� D0 �@h���6qHH`0< 8 @�(�&�BE�0y�1t���I��)���g�,
5b#��(p��Xd�����pD�}l�P��06�L�E�t�,R���1�w	� �D�����[sjC���en) 4�BH� jZi  ��8�y~�	��(�Cc{rcظ40)����� ���]IR, �Yd�*�A���I&�ws���@ɘ���7r�S�8���9�W؇c�AN�I�-(Ņ�WV  ��M�#p�� �HGG�	�@�a$@�0QPAb1@�F#&���"@"��q�#Ȳ�^B�S$)�$�a�]0.I���#�ʅ��PU'P�q�č�$y>8��P%���8�)�4�5I:m�B4C${_�`J��`r�Q\#\[���gD�)��"xB1�x �1�(��*5�`6�����y���tɃIP ܃>)
**3<$��s|�[�
   �� 0  H�Ox�:�))1P��	��k!	F#E��$Y#`�e.��F�(#� H4H����0%��N�K
&@�6
0"%�dXE��>�d��d��[x|@ �B�'�2�D Gʀu�"��o���s̗�)�cN�A����  G� ��M����A�p?���!�����0`PZ7e�z�$}r�qi�%�!� ͚v����Q`á8 �/�������e���*wPs���c�3,�j�Ƙ!(�4�?  E  �D�c�T(�a@"� ��#�$19b|6	|8�MT<&�C1�����M�I<���:�o�>w�$E�	���C9B��c�Б�31lE�%��I��2�|
�����+`��L�96T��#EQR�!��&���%l����u�h�� Ba	�<�X�1s��"0cN  x����������1#bJȔ���@�2cڈ�q�Op�uDe@0 �� �   EI@3&�"!���0 <?&E H��!�,y4�P"�w�Yc��EL@�͐"1&�P����E@��.&E
@|YD|\B�Pj �dx��	eNx��DJ�k�0<b2 P�2�� bH�)%�pߔ�a�E~��QR  5��"X�� �y�/�"�m�MJ#�"�"��R%�B�`n�`�o0��"��1C4�f�<YH ����t�z�����x&m�9ŧ� s���0�ǭ<�; ���ǜ�APQ� Aa0�D" 0D�"��CA����A��1�<\tt8� ;02�i�C�L�ġ�J���Ӣ����H�;�$��⢳Ľ4��0�0hW-��ԉyG�YZ�*^@����)0/k�՜����T]���()�N=}6Щ�w�<�<����9g�P����I�1+����z���0F�~�3*C�<���ࣰ��!�#��@����	1Cj<�:_R #��C"� P <����
��q���AD@@5"	���	(S%D%O�w�A�[#��e*�h��� f�32H�"�.%�p�ExƘxL����#s@H�S�q��5,,>�c�٢B�oq��&b�$VHGB@�uZ�<�8�'f1b�P��%~�LJ:HS�?@�@�  ���� �c<<ɍ"M(�$mBltBB�͋��uF�ᄤ�%`�t@\�� 7�F�С�G�,�X�-1�{��
�4=�ʔ��.l��wr���� �(  ����(لhP,La�xS�bʔ a(��H8i$c�q��t1H��e���a�AҴH�1@���c�uA��p�Q�� !�=Y-���&"K��L���6�Ӈm$O!�x6ԑf�L��wF�<> �wS�ЪE��JJHՂ6W�+i--[q� I��T�����]����r�����LѸ��At|^g�.Mj�1�2*y#��Eb�d����  ��v�R��RfJLF���Y�ϓC@�pD� (��TPx�S��c�<)>1����l��`�u��C��(/���HQ8ǁ!��� rB�t���e� &�Š��c�y .�,5{���"s`�d�H�� ))>јPf�!�7Xg��1��C���A %���0e�W�$7Ȥ�RC��T�D�X� �|���Kz�oF�6E6�`��CD�Fav�G���e��E��a�
��<�(p*PVX1�Az�4� ӳ�Qѧ�	�Q�3=�@�H0��Fk8:9 2��G�q�>=�Ѣ�@H8	����(�tQIR�O`F�!MD�f<e	!u�vd�]t��F�hh��<��0N�M�X>NM�t�kma�P�yz΄�$��Y
XO�f��c�=�gFr�3^˵)������ 2��S�HD��}<Rf@Pn�9�30�%lf��#"B~��;@f ��>_ ��乂� �!:��tY�&��MTրx�,��ot~-}���`���"1�De�[�x���`�� "|��@!` �G�L����t�&�'�A@�Y�X��,��e	�<!H�.
1��u�,����R&Ad�u��cЁ�	>.��Q攘E���#p�[�`l|�@tCfh��'��*�)��#P�I��|��O��c�q0���``$@����,�1�:Dя�͗�Q�K�Ĭ�f�3��	����2�IL���(f��J8k-8�ڤrl�  ��  ��0�>}5� DCG�ǐ!�@  ����`l",2� f��U!1)`����0(m�@�d@��Y�e9	� ,ᐣH�<EBB�aJ�5�@ʄ(�2�@�!'ck����+�ԔC1�sK��D6�cȕ�)�o �*�i�>��="d�-<�8^���z��J�!s��a0ĠH	�5~�E"Dj���0j�9i��ޗ���h��m����g�ɳϐ�5ޣˀM^d��O����'�Y&p�0 D�$�M��9�0�c�]8Rt"r���PB�L��B@��G �E����
c��#!�A�
���Xd�cR�@�XD�1=b
c�3p�2�I��cF� ��Rf�� r�/�Co�� �C 1@�'�1�5
�� i���O�",�x��o�_���O���e��e��\%M�׹�!�$�E�i��.�� *`ȑ#�% �
LO9��P Au��I� $��4T��dLa aQ��$��d8`0���`�� � ҅�! x lr0���q %O�6>yZP� x�D�!XP|�|�.wq;��b�A���`����s�8&�+�l:�M�dA�zU[��]��:a�������,��tÔw8U�G�����e��d�"�FG��3�rtHӡb�2 100i��uf08 �O���Q���M�mf(��&������]N�I�uf��!�pJʳ@�1����Hq�  ��ƅಇ`�j�����"�1�B�C�>�0�Y���H��N�f!p�Q"$��@��0�K$$�#�����F�q0 s�dp�PJ��1�� ! �`T��>f|����P8  �@C&���mv�F��ŢH�J���M� %r4��/p���`��$�xgw�}�y�e��c�#�	�K{���"  @P" l�-�
9@  d�$xxZ"�2b�1�9�Ӄ��8��R�0��b�H��@�C����C�Ft͐��qa� "�GPa�50Y���!I�A"b8�"}v�`A���H��@X	 �Ҙپ1X�.ʾ%im��n�R3���� ^���4�$#��<�@p]��i��t�#I6
xX(��p�v! 48F�J�>&>M8d e0>}�%���q�o��#�	d�i��M�"��&�I(�	'8��2��]�x��3���r����T " ����p*6鐤D�e�~E|d&D 4���1�@�C�m֙�:&t�9�E�:*	]�<$�$f�.�0e���E��E�pH���lqH�9fa�����<��"1E�G @����L( ��b�iF��`�~�  n�Ī����i��&A� b�ŉD�ZdU t�����i�as�}~�~��,რ�*���I (� �~v��JLȱc  1���F�2&CK��Xc��#t��@KE��� DHL4b"4(:
],L1�p*�� �5*�H8IJ061I`������d�Et>�ÞiiKYa �����,���wp
A5��i, �B[ࢅ�x].D�J�)!��j�R�Α�"�(�6c��ph���
�E ��b9fᑱ聉�$}:D(�hsJ�_���<����C�y����Qc�@�kl�F�<��Li���S��:�B�2�oq�g	�!-ֹ�4T6�y��H�@� RbP���2fLD��-��2-b&肩���%G�.�6.9�L�0�!c��|��#��P 6�Mr�q�P��G&�����!]Ա�61u�I�c�O	�,�I��S��Fc�	!sX}�J��Q��:��$F�I�I- ���� �0�Z
 B�
Q �I(C���.�u����(:�-eI�G<a�a h`, 8�Y �1��Š0�O���1�e�`	-OMGI�)�`�$$�D  �K����C�&$&G�&)��4is㎁� I5tʄ�0���` ��d��)�`��DE�\m[����T���^���&eu}�G����`��P�$c_��ɓm*l�g��˲5�,��z��S���#cpF�]��HP��bLLJ�D�%&�b��p0H�r���F�^@�E�>�6G��7�s��)<eN�R�B��٘(���(P�PУ�	�J�YlN�� �! ($�K�5Z4Ȱ�7�I�8�H����PcD�m0���!cӅa�Ǆc�����U� R � cB:EL�@� �`T�ƀ
������
�<F�w<���Px�6��`pJ�����i��C�4�CU)��`e���L�ޓ\�h   *  @9@H4�@�P:��Z��a} ����7B(9fbb��9�H$�T��ҳ#�`mD��������X��ID((P"ϳ�:�
�#�"CC��GDZ� 0  �$F��B g��Z�&�w�$�Kd6�v���Ч�uZ��\Cᾜ��o 
'"��d�{�]�Jũ� ���r�X3�T�+@4��@�/̒��`��((	�mEw���-�!��s��@�+v��5 2�g�<; 1�rc�N9Dz�|��I�m���#�C'�ń*9���`�}l>Y�<��A�3V��p��1x�0;03�i� G�=�����pH��Nqr��:M�1����H�j�J%���~rl�Cc<C�!x<��&K��<��� ���@��3�Sަ��s�0C�3(��-2��8�Q���0���H1)rJ��G@BG���'D%�O��'(P
���|)�>�i2�un#����	�F�  �AJ�*˴�z�.8�C � 0]�C� �������K,��Aj�x�a"���� \@p�.�I=)iPgX`�Y"��ƒH��>L�ӰC�m9sN� ��:S�	`���b�9�l�!&Y�%M�&-r,`3�O��t:Y��%FЙ�&G'�]�9�}e�do���PQ ��F�mṟD���adP0ylΒA��"�q\���o�DW����Kc�!��C����T�}F���|�y��^�)(����!�'��|τT�1u�+����Yb .�=>�������&O�˄�O��\e��c�s��M�,0e�E� ������5DVy����5ꨨ�K���y���% ���Yb�ӊ(����y�o��.���3J�(`#�J�fXF9Hvg��^f��=��� 8��2��"SBl�Q؆R�� �Qf�G��9� ��A!G�<���[�)��Y$x&�8&������,rNEYb �g�ЅP(� ���6E.��cL����O��G��E��c܅�/�C}�CR�@ ��HTB����s��xI
�C  ��������>}~�o� ���!���T���Fz�$�a��� � -Z�"O��F�%��,�y�}�D�1"� ���HC�`( c�,�����"��@R$	t,rXH Dv2U�6���y� �'��c���	�F��r,L�� A�(=\��k��ܗ��1��Ա^`ID�:*:~\��T�m]�A�k!HzD]Ӿ��t�z� g����d�>�̰�U 3|�MN�P���@'ó����#��G�78���dy�xfh���"ߔ/R�mN��r�����q�.�c�|a��#�ە�S����hBI�У��3tQ@`)��
#��m#4�c����fD�	Sz����C6p�t���1�x��0����G@�
=$2�<A��!>2���C�\�e�&�,fbaC��P"d�8j��N�
)cn�O�:�'�p��9�50O�I�F��E)R�  �����,���d�,6eN1�C���� �F��6�x��t �(��� @ >T\� ����-F(	�g� �(�cB�ʘ�0%JD(5J������b��a T0	z �E ����Q��՝�y�k`�(2�YzL�d��)ѧKL�"���q(Ԓ��"i�Uy:L�qAT���ת�㹶8�-2!|�$�A�nS�Y�(Nv��gd"B�Ƈ��1(rJ�"6/"�Px�ɐ}ur�Rd�"<s�(���)yx4�G@�����X�U>�C����}f�q�WR繝�;1
5�<��y�tY� �	�P%��%�ZW9���_FO�Kt���4.�	h�R�BH�69b�1m��!1�q�">t��H�X��G�>O3�C���1dB��&�S�<�HczP	L�����1�"!�2�p�(��&'�'� ���B�$�>Ã�`@  �   N�
��:��%���Uz$�)�1�$�P&G�UZ��0C� b��h Z@1�.�,�RO�(��T(K2
2��J� �̰J�e��X�i!
Z2$*!�4��KHD�ȓ��$��!H � �F�Sٓ�f��.�s�c$�`�$�ج�`���(s�� י���S�8�(,����>0����ExG�X�-&G����id�� ˅�"��R�
�C�Ƒ��e8$E0SF �E	B��!.�C��E���������>N��	Er`�I�-<���y�/H��6�( ���8`�D��2yZ,p�g$���Nb�O�T9�OH�0�U��p ���;���6����R ����)]���1�ET�f��>F�*�1>u
<@��1	�H���*ġ8�q@��w�Y�w���1��S��`dfyH�s$��yB�G���,;l�P8e<|0:�c��z{D `�j`�@h M�߈��v��l��>0FN��&!�<�� �b�ȠҐ�2�*">Jz�Gp��qdxB"a�a��
��
 �PP�q� 2"LKB��pdXG� (*� ���@P||�EBb� @"�` Mc�(b,�ɞ���Wh��`�!F�O�>S t(iv8�sG�@�d=c��!������nӲ�y��)��sz��`�-)�↖���<
�p&�UgCp�b|�(�.o�A��c�P�`�,��"f�>:96(��	�
�{�\���1Et:��"�G�,��5r�C@�Ce� �<�����IYC�k\�>!��.8dNXA@e�'�<ȏ�5F� ���Q&�s� Y�����m�@B��� $���X&qD�>&�	*Yl\",,4|�tx�*"ǜ���E�!s�[<�n����A%� ���b3�$"G�.*&��pD�9�L�ɝ\�� gF��4�����#�*�5)� +Y  �I�Oq7g�S�S`�o1�4�&���)1B ���`,  �����̒1.Apx�@ ���,55X���r֨�sL�A�����sD@QO"�td =8IDJH�"��bBl  ����Q���1�滷?��<�>m\�8�H�$p��0	؃0D��b �u��:Kh+&��%^˙�>o��s+ ic�9}u�#=��aD� �� R0�8�zzd߃�P�G�� ��E�°�����)�RG�����1�a<&!�*c�X<��i^��g�r*y�,��p�9���$�
<��,��G��D�80��9��`s���q�
�FmQ� �N��r�B�����F�! �9�I�p�:�Ȕ�Eg��� ���r���1�����͡�F�E�"�tY�QYmT|02m4<R8��`<���<�,1]F��P8��!��$ &	���C&�fg5�'��-c�* p�� (��#l�u^&�y���.M��0Q  #�  �рҠ@#=5�D]��P�EH(H$�] ЦfAP��٧d�r�۔(s�!b�S���#@a��( ��F}�5rXlaR&B��@`�@�zeOn��v�r��[�)�i4��`h $�'$O��yW�(U�E�7��s$%鮷z>�!㽷������KĢ93B���t1�OԼ���@������5e{Li:u���T@\�1��S�J���x\G�MF�G�, 8XH���C��a(O��5ʤ4�� �B�����r�+䘐cJ��fV�:O�q��HI� B F�a�D�茲ͻ 0f��lqN��ss�� "� H9�bH��A�B�>"*�h��Ǉ�S�Y$6���qN��2.!\x�G#�"4,69!$&����Pq��2!�'x�}VX�#2� ���)S���� ��av����R ��  �*��\��!�C��fF C��QP���P�hF�*C��ѥ��ɰ(�.�]<-τHD���#�Od���&���τa�(()PTzPL$-6p)�@b�٢��5�钆#@H
J�:��x2�P��:$H���P��ޡۣ�)�p�`Hڌ`���c��Z���D�-�֯{�!�]=,�4�_3��DE�;���  q#�#�
.Ԏ�cC"Ԑ��B��S �]ldR��yL��Ը���؄�d�А8`�>)�0B����yx&�x�]NШ�ӗ,E��G�1"���<|�*m&��8�H豁�
)�y�,666�p�� R8$�C`�!Ĵ�`4I��/a�O��
��<��.9(C&,��a����H���̻蘌0`H���|�3^E��CV����2�1^��� 0�&-�(`!"6�!�D,��E�gy�9E��w�葡F�|�,1�648��̶H0�U$�1�� ��c�y3 @�H���hs�_��"�(  ��@(  ��r��٪���Va.���O�!��cH=Ft���(;T����	#3 s��|���C�"�P��Ï��)>�ϲͣ�� �<-L<��|��s��`0A�
�@�Հ7$��%O` ���>��֞%ꏎ���F�F�B�3L�!C=��t(����3�}IK��v�f�����YU8̲���s�9ù�2���b� dp<kH=!)l ɀ`� �r�&sD��؜�&mx.� �O��	����1Y�:g��4?�g��$e�I���@���E���9NX%�I�[�>}J��P�0����R���\B#G�Y�T�H$@Ge�s,�Q h�13����I
�J�T2I����b��J�T*@�9�:6	��2�G�,6�*�8j�a���>Z0� ��x�><�J��&s�!p��(P�!r���M�f�K�,!�0IѦ�$�GD
`�,J|��=�< `�

 �a桴 � � I�b��G�Y
���M�PӢKb�K�Qr
���$��-2:L8�m2�؅�X&����>�9%K28����w�F�:{�7��OqD����� ��ù�"�ɑ�B�QZH�� P(    �   0p &	�s�s�y��9װ)C��QD#�3����9����|�Op�V�L���f��\�p������o� F\�/�#itI��ԑuq-$�Br�AR��C��!�!�:�<��C2�h�Ц��)3��8`�.��,2���6�1�I%�×8����x��/3d��y@��L��%�  T\�%b���i~�G�3�	  ZD���[l gJ��1�B�Q'A�A��هQ$���CTr<@��̐*&�	E*<AE�Kb
� �ǃ  ��%G��	m�Ȝ�0�3eL��H���"C��8%�`2C� uw����U.`� =
�/)Bt&�Nă|���a/˦�@ `� N��D�&�$*�D�d;��bOM�(�hSP�ѣ���Xa�%��1,0AI�q�{���Xc�BDIE��.o�9�_�
���1�`��j�Ȓ��Q����k�J�������a  @ !
>���O�����;���J
`Ѓ t��t��Mi�I~��В���Ƀ<�cSUʹ�[���h��X� *�gZ%�H� e�).#��C����MDJ�Ybʔ٧K���#JpLh��!����(�%�y�iҀ'�*��(Ӗe>d�.e��I�9fء�.6X�d��d�G�<�&��S8�D�gF�!	 �O���)Ӡ��Ɔ1�HDBB�-v1(�!E���� Ce�D�Ð�qQ�i���@dX� E�2�ǧ  ���RCE!!#b(��mʌ	�I0q0)3���,p�B}w���}��Ё��������CF�2
��3���	B����Ht  $ (@H�>�E,9�A�8J 1���&g�`�#,\,s�>�Wء�"%L(}Z<K�,)��	�}l�����������U�B�2]\2��$�I��(_�Qa�y\Bl �#     (�>��:�yG�)�ϛ\F�G�Q8=
8��H��
�:M� gޜ#�#��[�����¹�$FR���qQT�4!� }5�L�
�3F9�O	���I�1]��:��B��	�+|��H
���_�A�S6@��u���!�%���9"��/���9�)���w�r�	:� � ����6�,0��
� ���kD��H0�4Y`�"���*�<�29j�	 �Ȣ��G%bǄ}�h@0`������ ��P����!š����)�qH����I�3��H���<Cr`d|&,q�G(,�����c"v�n10=��@��LOV^�F�I:l����8�| ��#(�`�@ ( �� @H����(0B�Mj*"L�ǰM���Ch(�4x2 ����Er����3b���l0d����,5B�p�S>��Xp�[,��|S�"�5�`�E�! H\tBƹA寱���0���5jd@C� �  �B��@ ���gJޘ�6?(_ŧF�����D�)-�mC� �:ZM�TFX���sn�/u��n��H�%K�i,cZ�܉Es�i(U�)J&[B���gh�82��:�"�㑣�
c	�;�,p�Py"z\e����g8!�:$n�W� "sF�6�L1���Y�瀛��)p G�SL�9��O�=0k�<a��  �!��0��`c���H~'��X��0�1B���MF��4Ȑ�b�!f���"t�@	ᡸbBʨ� �( N�񡘬pB�:�Y��<�H4��&��.Rٽt��'f��K�.�$�&��.uư�� kdI#ܞ=ƃ� ��  ��C@0  ��ЀbQ �
��1eHEFGd��)%-:S���aF ��1�^�!�Ӽ�!�0% # 	(�`��1�!6x�<��}��a�E�0	��p��D�(;��e~����} oqK\�06���� $  $��I�'���w����t�����DȨ��1�\jA������y@���;�K{�&mdƔ)U��{r^��$e���(q"�cV�@��W�1Db�!L�p� �$eL�2�ĈǌHx�-
�0X��<��l���+���?]4����pJ�
M6x�
/��	E*L�a��I�O����}�Z,I�С`�` �C$�D���7�@�� �
"&:S�P\, '`��p�������Ơ�H��|�A �1a`z���p\�GH���p Y\tBv)� Rz�|�=n�3:d�������-ݞf��H(����0��IS{�0:g��ĘP&XD%!���*���� H   �.!Y��ҦN��!��X�M�,���LX�"ah��g��.�p��x���qN��i�gƐ�6���@$�r����._a	�A�!�@2G�"�1}��fy�?b������wy�y��� @  	 � EE�(�?�B��8~N�M?g�!M�r1�	Sd<NPG�Ĉ����F�g�6����,�yy�3�wE*Yt�JH�IwՆ]ߚ�Y]U8���!�O@�:?$�% *��I���e@��	@b���LI��)<2�y���裉�&`t^���Y"7���.�˫��� ���c12��!]���>3�$��0�6H �����(���ZpX�p����%� �d�����N�"�|�����[4���"b�%> ���&:'�ƨA:�Lv��[�S��M����4f{䑈�b3����K��<"�h�Yg"*������ 1rt��!I�������X�2��J� ��>��2_��H��$-d@��  �88�y�����(��s��b�j*dX
�Xc�Yj����"�a3�4τ8óq|����>v����a�C�[-1G��1>���
#��1�7X��l�O�N�	r,�9~��U�=Ö��1��D�p��L(�; 	 H ��
G�a >z?���	 �ׂ�3�����$T�2M I�19�8Z6`dφI`�6aٴ���1 sIl�Q=I���}5>��d�Ce���\e�_�c�V���pX@A��%d&t���C6��s���@�E�ؐ6gD@n�:Y�aį�E��p�sL�,?�>>��X��=�g�)��u1�CH	H�AyB�¡�1H��A��&`�Q����&�9���;��T)��-�9EƂ���@.�=�!��g��A	��d�r�&�#4�$� ��u"ӡ���"k�*CD�4�\K��1FD�0L���*�.�8$�� � 8��(�`��'�]dDR4V��'�}�11Z�>t��*=,t4�����nV���!�~A.u�A�%� ��vL�S%|BR�9E��4�ʒ�|[ّ����u}b�qg�\����c�]x�PC�6&!Y:�}�f7�
K�<�q�S0oas�q�����O�aN�w�����l�.�9�~�o�gY`����&"	1 8@``�\	�#� paZ��m�>�vw)� LqqɱG�u�qK�^p�ť�GQ�b�F3fc+&�<�{�$÷��?����e|Z�l��>c<��	e��4?�~��f��yN@���d�C�x@�I�,w�Y�C��0�>Y�i�PC'�E��d
&����	N���b�>��zL��ß{�?���������l��x0���>�#Rc��IȀ���!@AI�X�� ӟx#����',�jX�It�P�8�`��G,�,��0K�<��H�Qp	���LPH���Q�q�Mt
Ĝg�A������Y6@�Kꢓ8�*3b�j�`᳁A��2��*ô�((t`,����rD�3EG$A�Hш �S�"b�"#�H��!H�H@ś�R�|~��gg�珽�$�� Ȅ�f˗*!!2U>DGApJH�������t��x/���Gw\��6�����QE'��"_ϱ��V��΀OX�H�*wyL��ՄN�Pb�
k���,�5,��n����9�6�ɷx�����t4��8P,|��s��� v@�jw��ܶI�f~��O��#z49�]D�T��SJ 
@�!<M�F��C>��>34�Gd�&��a�x��<�"Wy�9��a�9Y
X��K����>��±ë�,C9�E�=t����sL�x��E���|ƈ,c�"D�)1��M�S�H�LYE��)&/�
1���2V�?�"	L� 
%%�!�"a�(B$�d�0I*9���b�#0@b�)�x<�9D(���Ѡ�(`b=$]L<0A�$9���.��G��u&.
}���6c�eD!	�%2�`�C�c�	��G	�o�r�0F4�� ���bs�[ "D2O�
���$CJD��rH�,o�����1��9S�S�x@J̑�#��0h0b&ϔ�XpFa~���LL�I�����e�~����O�3L�e��� �+�	b��" ���na��'(`�� �6c��b�r�}��4ɐ��X�ӧN�{@\e�k���̢ム A@ ��������"Dq,6��[���>�Ĉ�ҡ�:=f)ӣJ����A��:�SR�YF�a�D��H�1ǔ3^��E�.zh�8b��AiІg�f�c4���6G<�cr�P�9�2���	�0��\��¤�F�!f�rN�9�2�C'�!�Y�,�X`8���b���G��Y�\��С�����$��e�A Gi���8���d��N�;��5�S���d�G�x�'$h��Tq�2�������h�Ӂ2M�4����b���_-�5r�A��[
:�cCS�"�h�a�)��I�}�l����DDX��1��h�M� �CJ� \(0y )JD�@$" �Ȅ7�&˳FP�A�mD 1YrDP�@$b 3 ��u ��D,�]�Q�][|w���W��@ҧ�>���!<	����)��s\#�`���8�.����@Q	H������d�U${|�$#�a��&��T�$��p�¦�IN� ���` 	G`ύ�p0�.�WLƷ���m���Q�����O��a��B�B$LNx�]>9f��Q������f��<" K� ��U8z�	�q��c�7x�{�`F�uz8�<���6���6-N��7!�H(@T�e��Sz<��-���t0)�@�Q����1�O�.89�H�1@��*�Hȸ$ 8  ��J AE�c�'K�����eg�E����L��E4|F��O�@�Ȑy"&B0 ��K�QM41����%C���
��[Ul�t]�{$K�αg�c]��q�,TN�N�*�� �K�m��=Θ3D @e�'�2�ϐ1&�f�N`�А� ��	�2|��g�
�]�k8���E�>�,�!�JH���:]�tP,�J���U�I	W|���& �����Pd
�!�p0v�𾦻�O�=��}~�2?��\!��=4Q��qY�%0C��-��G�`�5v)RٲL��	<����4&FB�x���(:�1��ů����A�Mr`<|ΰ�<�hx�h���*Cd����.!����O2ćPaʈ����i�C���,]bL8nrFD�#~ȗ�q��&O�ϒc�Oc@	)�~�g4q(��f��x@
�(h��sF�gLP�`|�X*Tp�sN@�>��y��A�6_�]��H1r��
E�kx��Xp��BGb	  Q(bp$���B���`�.��TPi����6f���Bx�dڜ��A��`�Ș��`6$��#�C
�T:W(2ȗ��6��L�P7��,��`L�5����g�-&���Q�:�	#O�B	18̻��X�f�!�Cx^a�L���E����*[\�y�<�"SRR�c�0&0tB0T��"����B���KH����m�P[�
kޮg5=F6�2q��S�ڳɔ<��`Q�1�xd �y�]4�x�|����{��5L�<�]z�-&Y��K�.��2�)�4H�E�1	$.��qp�æ� ~(�!�'�q>� ��*�J�\	@Q� �x����]¢�V��F����!�&��r�jP\, ��8�LF���Uqx�,s 4Jd�	��B���,��G���L��Fls���)r�˄T��Snp�"�6>Yd��q�u��f@�y �N�%��x0n�*�X10�!`J���G��D�}6) �%2e��:6.��Ӧ��""��B��T����H @R'ѤE�		1�3 ���`�z<�@�G#�����c��,*{ >i0;Tr,2�df�]���r��5&y	 �1G� "C�$�����B����BF�<��A���h <0!���c�e�'��	�@lF@���\N�j�"3eJ�A�lJ0"t�` �=20ttjȋ��ₗs y=>&����>j���w�zD�(Є�.�{|��C�mr�Y����&<=�}�DL���.Y0eZ4ш��'����E�,w�'"D!��kߌ�S���5bnc��<Ν�"I4�A �V����*�-�I	 �d~�ebL4�G�	D�e�H�q�Ȼ�@�h�y�J�5��3��q9Ab��b��WX�+�s����L�C��@�@��#f�k�9a�c���."]Dfа�q�	N����	)m�X�3+=�A�9�h�Ѐ����s�9�,"{ܥK�sB�4i��u�f��m,|RF J���D@1�)�S&� E�E��%�y�3�̒a��<KD�]��	C"�˄�"Yfإ�U&йFL�{���$�^7n�m5��h(�Y�M��j� :�أM�n�ċ�XT� d��$�e��&����S�w��0���MH��c���`��B����D�39ΰ@x�4����e�2�� D�h�<��=����F2Y�qT�����>g��/_ED���y@��'αɓ�"���Y�9�6u���6')	/2�7�G��I�G�c��r�)�l�0i��	��لS$�M
B�����y�6� ����{�X6?(PW�����]���z5�u��c�a��q�-���f@���'@��G���qY�-�����q�#q��.e�����&����2K�]B �	�,�p��Qe�=<8���Ȑk�Cѡ@� ��D��A@(6%i1ϛ���E���
NPX���y�34b(��Snq�e��1��J	BA�q�U�( ��]B-�3��˴�3��-"z,�R�K���x�{,�P%$�M�/pJL�-���������TH���à {����!�r�WJ�A��(�42�AJ��Q�PZX$i�D L��`�P#�m.ó�D�9N����C~�oc����8d��,B�Ҧ@ʀ�d8a�����k<�)22#B01��.e�|�ut�'�-�*�8Χ��-�ĸSf���T�H�er�By�#"l48_��Q�p�"���P/v����:�1��/�x�9�X�`���)�� "@�&d��i��!,H<�41e69�s�f��g��|����CQ��qCR�=�[-�!�;�wX'��	�q�q ��x��b���}��x�A�90�b�=(?�/P��|�!	����EF� �`�_�[\��;�H�y�
c�)!C�b��2�	h�,�r�P�b R�(= #����T8�"c.qJ�H #��7�����9Af������=|0#�<��Sx��s�<"�h"�1 @����
��0��1
pu֩��1��Ę�dYdH����@��%|0*-3첀ɔ��3J��mFH����L�@��L��v���o����,j0l|*h4���G�$�P�! � ���!��!��,B*�l�bRcH�R���`�2��0tJ@<< ��#rĜ��eJ �A��,=�qY1D%��[f�\�^{˰��v��^�,��Ǹ�<7x����GBahԹMB�#���ep^�����3�9�E� B
�.;Lpw��7�AD��0B�����Ȓ��St�xĞa0�*e��	)�E�18��y|f�,�5e�K�.�B�s���)}8B"�\�.*S^�� 1
f	 0��
!G40�� �>��  �E���!3f����ɀ2����D<f�

@0[��PpQ��rD��.X`�yΠ���O�̑���w�� .�0$s�I�.:"e">d�@FԈQa�4� ��y����) �Y"ց�tq`��2@ � ��p�&�9�qH���R�d��K���1`�WH8f�J̐��l �3`��b� ���,)@&�. �2��opǣ\�$@��aF�*�8� lT
�A��$b�-�$�`�6}4(6*<x
��Q�DJH�}dj��i�!0�hLq10H���	�� 8 ØE��-Y�2�bA�,�T�g>�F(2>�?�%R6��C$�'Ƥ���� ��6���G�y��0)0��P�9
�>
��oc#P��ۼ�O�66)l,.���&��3��"�������4�<��]�]&��K
t�7�>�Dؘ4I�i�d�&�!�=�q�E�|H�] ���<]��Q`� �� e��`�M>A�=~�ǬQC��4q�0T��q�1G�	��c1a@�>	C�Ц�E8��O�,O0����@�
�B�1OC�	2�p��L�S�ʘ���Ex
`�$|�9�x��A� 	�S�� I ��� 0 ��gJ�C�&b�
CHh�l�q�S���< ��=f�i1�
&�A�: ��  @&�!�]�흧x�+�)�U��8�"�u�p,�p��O�'���:%�ty�94Ft�1����2 �Ș2*!1&LHQ�Ȅ��(P8r�P��X"fO� e�I�"!�<�G_Rp*�'FSL��6�g�p�cR&f���%#����F\bL��^���W���̝�p�4<* `1���6߄`���-s�� Ţ�k�e�P�h�v�b�@@������%�#�c���{��n�f&�2S��sD�&�q���G>�t�G�G�'�SL�����G"!�pp x �hp��!�ļ����#xxd|���fH��Sj(�Pd�׹�!?@ŀrJ�%ڈ`4VI82%K� �
��D���'�������8��	ϡ�K��!6�+L���eJ�2�1��H�%Q�D ���1)ن4,�>ƉIѣBy���MJ�%80m0Ur�< OJ�2"#��(SbDGAC# ��B�`� e�@wQpD(���\��Wy�FI��J�:�1�yBb24HbB��҄"Q���p��H��,)
-8\bj�p�3O�198(6<��E@�.6e2� z�(H0)),�Y&�T��6�e��'�))��0d���c����h0B;���#C@#��ÿ$!ϟ����s�c��s\@	��Z����A ���0G��0�BW�'��G�4]V�g���4q�QI�K	D�N�`F9j�:�p9Ev���:�-���L4�	Y� ���0v)��
U����3�A��1ǘ5Rt
<f�=�� �l�#�ࡓ� @���#��#�.�>��2<9v�����v|���L��q�F�3F bb&8���&M^b��E��*Cf��.�1a*Yl����L@��	*#Ut�D�8e�
e"���x�d���q�C�L���w��D��(zH�t(Q��
��D\d�3��ˌ�����h��p�a�������<&	4J�(�� `��eop��B4X'Ƹ8=o�R���C����!$9j�0(I4T\0�J�p�)�%L� ��(`3b��	:
-r�� x���A�� 8(12<}d*��s
���A��
SS��-��p����?f\H��#NE��.U�1���3%&E��
�>.�7��d�n��ئ�,��L��  !�P����g��ܩ�!X�Dth36kS$�E�L��0�d���.�t��fkw
�5�,���˅[	����䠨���\'�b��%�py��3��F�} SV9c��s����CaH@H��B��Y�����0(s�,C�L�"�#�!b��%D$�%���-4|
l��Ę<2j�� ��#��&%$����%�Ge�3$ BN)�A�:�D)�!P�	
!��
����a�]�QdLD��L
d�A��=B���Ǹ\c�.cxt���Rb�2@� FA3���LP�
�	� P�g<r[���,=� ����h�c ! ( "�.���c�]n"a�!��q�L��

2Sb�(�0"�Yb�-^e�GD�A�6"<���@0 ��%d %��g$Y[���6y�2�`Y�X<��5��W�\�W�>cx �y�=�A�Y�o���,��xB�Yd|�ur �����`�Pp�Ȓ"!K��t��a3���$י�
�0B���P\�fߎ
Mbi2uo��[�u����s�.���ߥD�>`�g�E�wP��&	%|��@�@���!aL�A �0��>���	����_����S��2G�p�)&���)�S��D�X<$e�YU6h��6u� rL9&�)��L���bЅ�Q���!]\.� d1y�� ��3��ty�	-�ǡH�, J�)	2
*y��R�FM�a���i5�p<�փ<� ��!�K$p���d�c�:E�p�`&X@$x��L��00  ��T�+T KdGJ
� ��)��y��ELAH�� \�����5B�p�#�k`ӥ��l��H�<�dP)�r �AL�����D $B!�G���0E��L�������j�15d�0J z��(���h�
�C�$�� �#j �R�7x̘9|�����c�'x\�0,�]%���k�d�?��Ǚ��i��\�w���@��%�N��$wN��#bٴ�����egg/�kB���J�o�N�$	\CAb0�˜�,h'�S%C�
�v#LBF0F�>u��<&�`�	Ex�\�y 5�Pf�K�e��|�O�R�J�<6�E��&�� T�3ł0f�M|���5��D��~�O�u �>#|Tb��@ V����#�dDH@�S� ��-"f�8�&;|RbvYEE���q@,�қ��b� N�	�PD`�*� ��M�.e�X��fF��0P��8E/J@vw��Y-+c�%��O!c� ?����\�R�1i3��D�%r�����&����ο��2��{�J
�,p��1�A!8 �%3ʥ�8��hS$I�m��Hba��t��2��x�y\�1��>�&X� ���9�e��l�ӻ��RG���n�V�����]�@ڔ�"B��z!q�!�9�]�viJҋ$�O�s�:O�xh��X[(H�֨%�O^䳜�0�=F<�}8f&���$��6:3 �Ҝ�ۇ(�e�g�;���m���7b���<՜!i��,���C%����A.r���:Y�йL'�a!A0Z<ʮ��"/ʙ@�KI꒑���ҖD�X<�8���(pC���1��%�ɽP^8>�0Rd8.���m�q�遈Y]���ٚ%�N�ԕx��(ơ�b��$��B��n\��b	���b��2^bY�]Ɋ&��I*s�˦�+���dK�"P�HI��,eD�q	F�	�aL�1�b��{c8䑃�߈�{cs�b��il�8����B����L!�����r���nx�Gc"�z��r���s��T0�1��9<92�ӥO��:"zL�䁤�x\�Q ��,����`�$1�F��7���26�hta�`���bB6���!R��K���
2m|2D �q�	s2���oT-Ij�����Y� �" YΠ((d�9cTP�<��?�A�P�LP�c�uBeӤ��.�3��	1	&3�`Rla(�kL	�x��|�g�`���G� �%��А8x��hP����7�2�R���������O�r��N"?��1����A���aK;���H���6Y��xȀ8\$84��!p��d��G�3\6h����1Ea�0	2�|fȠ���u,��AevED2p�����hH�>2	7�R���'�K������E�

	���b��9����圗h�҇B��CfȐ���CH����dyɓ���PP�2��t��8&�$K�	}1 �B�1}(z	��ȡS� fID�[�dLB���s�ɓ�������   ����0u��o����E�t��[���H$��J��>b\Sd�*G�HX��a�QaP\"
 d(�)X#�H�"���� �"H�Z.3���E��T�B��c�I�dX�HD�	����|�orH�%�)a��(tp \r��Tz���H��Ⱦ������8�L�<J�vX�/t,Qȣ!0��C�K�]4&�N�>��\3L��c��$a@ʐgY 2��,kaT���d�'�	�0�&5!x�( ��&��҆��m.����ā�G�1�P���9�����!�c�	���!��,Ct:�@R8z0�D�XsLJ�9��P@P!`��,f��1�Rd�EJ TC8�Gq�)3$�  <
&:L'��80��Ag�)��AY�8������I�6��"P @����* x�/�*1^��Q�"[�L�fJ�":x?��F!C� �eb�T�\����q�  �"��!�3!�äH�"$�tX�%`b��(LH(�VPC�����bk\�zʈ�%L'f
��.Cf�0d$<06�<������s���qᓰ�;�)�5
��Q��*�x�tpH������e:  �xa��	f{�o^oΡ�S#A�urp&ء�9�p@ �t�����`�s�4������F�C�e C$,:��0G�#�t��.C(�}��O��OH
GH��� C(���w�M�<c�H@��(����<_�`�ʤϔgP
(��/�`�Cd�baIHȑc�g���1U,x0�GL�)!.�ԸC�	��x�]��P2Dq8�	$�J����QŃ��a1f��oE%�K��mv!d�2�!�3u�D0O�m��hlC�0Ȁ	   
�cI "& �[�+dp��f����1��P� ��}�L��q�
y&��� Z D �L�A�"!FDcD���178�T��Ahl,x���Щ4���k�c��ӄ��f��)��1�>C�LQ π���K̗x
�c�x̠qƐ�I�m����9�kX�q	YhoK>�m( �@B1���D�˃�{�[��[PL��96:C$I�$c�f�>�X�f��)^��9*`J��r���H�����u\��.
�@HX�Q&G��vv��NH�C&�u��+D��2���Q���S4����!�`�!�J��F��L	P1���9g���2"&`H�+����c�%z\���E�	)	�,��2BfGL�u �|�
 �sF�,�2� bǜ*�uT0����.����ǵ���P��P�@(�	 B��`(�$\�΄B����
  J� �#~0?����Mm��|��F����,3�5�<e"��`�Y�2�Ç��A8��k���0AFƇ�CH )�YJ ||<��p��pd�I�9���#2����&�
�k
t� ��9U�l�>��n	�c����E��<�4�`�2�E�T��Ly����P'��
}L��X���� w�#@ qh`d�~Pc<���1< 8�{�E� �a�I��23\b �9���6��CHP�1�(�p��N�N� \���.G�3��!
!7x Ñ!"A�@�=?�"��5���+|O���d |���!�c�>A�yJ�r�-><"]f�q!`
��q����$b�����(�x�H����8�s�#:̐�'f�%�p� r�|
�#�p���%���@���@H<(6�5L0˘hdi�SG��┐� �҇ ���p   �IP�K�@n�`�p��r��]S�Ţ��$e"b|��#⒣��G	f�.]$�£��N��A!��a�Px<Y
$���D$�F�&���S"�YQ%u�:͸fi�S��F�["��f�k�|� � H�#��yc	�:+8�A�x@�8[�d�p<V8�:牘��˽�H��Їr�� .������[8��� ���'���IQ���^Q�(��@�<Urdd	�:SJ�8%"���NY����aS�S.1��3�>',1bJ��LJD�9��b��ut,&��1�0 ���)�����N�K��a��i��  ��@�,g�쓰H�9S��G�m � |x�q��Q��[\f�Sh��Ud֍B��I�U��#� �@4,f��<������$��FECС�G�]��Q�X ��>K,��I8'E�# A�
 @�|�]"�~'�� �H(������	�TI��aA���p���@Jx��8,r�K�65�g�
@�����A�#&%Ɓ�ء��Ix�1*:6.��t�q�؄��ʂiZ�(�Ō��2!� �ȑ�%����q����頱�*e�8#%�J�+���@�8�)$#l �g�=�ȳ�q�na��[k�0Y�L�@�l�8� ���l�$[�
�h�iNr�q�5ư�ҡA���p�sΙa�Y������@j�r��h2b c�Q�&/���!�S#�)6.���҆���Ø!�<`�_����!;O�2*wI!� S>M�o>O�U�{�o3�F�2�A�.
3�9D�Ce�S!)%��y CfDJ�:�i�"��4.O�eʜ�`��H�� 8��:�а�a�0a�O
������0ƨq�-N��>Y�ph�'�)|F�p��`   �G�y  	  ܂�/��>�A�;/�/�]Ttt<0����7S4�d0��g��-P#�D�1�OL�6�.�hP��<&ϔ�	/���C'Be��$ fy�,%��1�|�_Mv�qŞW��Q�2�&0�겱�c8�iҢ��f�&��9���$#fi��q��b�������;���c���0.�+<A���PZ�E��--:A������6�P�E4��� `�<Ϸ������3I�+�����x�98��pl2�1:
7x����!�mBD��	!<���p�8Ef�]�d����rD��|��9Af̳�ψ9�@ĘG|��c���/��js�O�F�4| 
)�8�"�#ޖ}8f	��a�1.
�2"����x 6�0��sF�U���X��Ǣ|.K�r�@��!U�0x�Eb�̈́�c"�T�S�RĐ�81�-Rp|:���P9�A�,!	  #B�_i���G�]?��� ���ТK�H�I� ��0�c���������P�I)�!R%�
eR���Q��!G�oc�G�#c0B�@D�˚�4��(�@h��,�l*��}T"R�XPfy�\��C���Cƅ��r�6K|�,c<Z b:L�������N��9��-�^�Rd���X��e����P�0D� B���a�����To�hB���M
�W��=�9��Ep�CF���$�"'�lS�o��8@`�c���9��<=\�dȠ����%>� ��|��S�K����u�!U�e��,�&2	
c���'C�	aA#��#��Ad�e.s��
1�|��!Ct� �H��8��Eb"
p�x�0J,3��L9E�Pƥ��i��"<>>�����$d�=Ɯ�"~���Y H�0 ��]a|c�<���e�d0h�#�E��`�dHH�p�B	��G�C2��'x�5zH`$ Cz r���L���P��`F��䡨 l0���H� � BKj���Bh�;�f%9m��0�� �������?iI`�q��N��&G�����ѦH��2gx���y��Y�+<FB ���4��:��3���Ua���ն�S滗�[��APb���eLe�)�6+̒�A�{,�G�M*`<z��Y��cP�}6Y`�sJ$�,����2���b��6��� ϟ�U�a�<���>�px ���bD<9���' �HIaܡF�F��1�Be�&x�(�c�<%��h��x	�#vI��Y8P���#�eJ 
 $.y�PF@�x�e��h���d 1P  ��G4X��U}@�}��2�4)�a�d�0��aĜ"Q�r�>o#Rb�m�9#b��L�	*r�X��(�����������A���+�HD���X�� �m��*cBr����Á�#��?b�1M� ����WA��$C�metBlj|�3x��1N�?e�k 
H
���Q�4�"�_�����UA-�R�`��bc!���|�y��!�p��0�<"�!K�&�5��N�����y��a�!#VШ���wY��B���ҁ'�a��G�����|�~�2��P`"��2ƥ�UF�x�m çQ/��C�AO3��C,8$D���@�0�hd��L�ш���Yf��P��w�qF���tP�È-# �p�uB�@�2��Ӥ��{��0�`��A" � }
(T8E����0a��<��p����=Q��� )ܑ(>�{��pINpO#�G$`
O�%18R~�M���M�:O��pxhT�L�1`DC$& �F"B�cBJ
�2�Q�� �5[�.�(MHi��H5NU�JL�&&� !!�s�Ej��.2mB0e@鑑١�(�x��8H�k,s�=
�O�Nf)��$����,�<�U��b�SI�"��@�\����p�sT<&��e�8���&>uFL�N����|�.7�0�#��M��e8�"��yJ��x�$�"�3�:os�2
��q�" #3�X��f���9�ӭ!���Aa���s�wA�Q1P�(X)pD�Sb���,2,r����ceJ�p :P�iQ���E"A%��6&Y�x<�L��&���#�4�a+Ddh��M�%�q�d�k|�O�*$  ��� ~�'�(���c����0i��&%8 ��UFDDpp4�qL�M�"��E$R�L!@2��K��H��Ę�<Gh������0�@R(D�L������B�o� R&L=���1����D0
1c��p"R�@�&���We�4]�Y#"&�N�.�Ty�WXg����.�L��p���s�6�l�t�����|��P`P(g���<����Wy��C�*i�����#p�eV9�B&EA�Û�Ӡ�,WP�(�!)���B�e��P �'�S�L�F\��kt�hR�cJ�1<Uf�&�|�U^�%�$������Y(�C,V���qB�1}rh8p<�f�U8>  ���{��� ��kP8$ -�&`p��I)`Bh0���6] F��8��E0�,��tQx�7Q����E�������~�Pe��&���=�@��At������� <Z\�������9����0�	AXA� <E�(DH���聙c̘)69BRl|4)��ђ�y$H5!�68�U	D%	�Q�"ģH��<�,61y6A�O�N��*� )ܡH�8�T(���-��́�/fߠJ��\~y!��0�;K���8=T�ğ�#�atI��y�4  A@����]@�{��'�s�q�d$"��,ek��6��r���� `,#���5�1�&,"�p(L�йʗx����O��o��O�&}��0���Md ��:k�񻬓�γT�!4<�2;dX�EL�B��D�A�[���,f�� 2�Y���+�P���R���DF�\�1 �E
%�C�@�Y}�h!cAY��G
F@�BEw(�aM���2~Ơ����Gewgs��|@����iw����yV ��s�sH�W��0X�a����Ǵ�Q�2��	2*)C���p��T ��'�&BF�٤$�T���*��7�H�
	LB���D� d%դ�� ����Y&P�� �Y,����<|l���Ѡ�(8T����'C�
a��͌]�Y0M,��c�>���X�*�|��gz̭�"j�ʞ]�G��P�&�'�H9��@ E�%��{��{������7|�v�:!*9.sy��7H��Y�N�,>��bJ��>�LPIpQ^*��.�&�9> B$�C�g�e|���
�,��%x 9�!<G�!���:שV�[D\>�Zd�d��ظ�P8f���a�2��(1`�,�s΄%��5z8��h�������D���)���"uB"bV��rH�]Np�Hp��������A�[Z5��L�^�9��Z:+�lv�V�N����:/��gmܕS�Dp 
�r���LA �,�1o�D(�E
�4����Qv����"�1���\f��SX>�i��&>��M*�sDb���I�yB+�i��`��9����P}d *+D�R A#�2�[�h0��,� 
@�	�@��`��G���	�BiR¥�:r���Z�(��vy-�͞�q�*�_6�[cK���8�4=��6bzS��azt���k����>��X3fg���h�#ٕ�072��T�QUOe��������yY9��3�Yew�\�D|=Z!�{q1>��3�g�jHq-2�D.��)V�(�b|<�7ȾPʄ���A�&Z��0�8���� �_�1��sdR<w�����p�7�J�oݧ$��w������I��j$�4p�}R !��8gH���CT���C�(TT�KS��ˆ(��C戒�~��Y���ʗ(M��� 1&�MvA�Q�����R�x���QS������')�Ef8P��3�ވoAÓ��럼�5-����   �c�@A	���� � -����mZL�E	�(̂
f��3 �����f�)1)��r�1̼��1d������A��i��Pb�+ BRj�	� � & 4���I0Q��a$4Ɠ(#�}0)�i��`0t�h����u(3��w�I���B��;���1�	Hp?o�'"s鞭�$�3��%0�L�0MtL��k�^`�1Wz`%<G�/��������<2d��x���=2�ef�V[Գa��,�>�P^��cJ��@\:�� 9ڌ �t��s��L��hDt�`��2�!�#`��*9�!B�覑]�L7ךj$E�=�B��qa�a�A9�g�YT(lT$4yDb>�g�,Y8Dn�r��aP�$0�)�)!6����3�&�s|�BI!BGAң���y
�u
4�"��@�e�(0B �s��U^�3@D� �����
 �`���>���'���"��h�hQAXcFD�0��)$�8F�Ax�9BBD�A������X!�d�	�2:.	y"� B(	�Edd �BL"��3NT2x �NL�Ӄ�eD�$��EDp��Ks�q�D� �wH3�J��$?�2@��!�	1Q��������l4�XE�Һt`+od �[z�id�b1�	�Ge�}t�����P��gXd��$b�Ƞq
$��Q9c�	OcѥJ���!1:	"1�	<2(��������5�]�-$7�9��p��H�k�Ȯ:���,:Y �ӣ���2)l�d ��P�O�>[���c�"	!!e0�T!h�Q��w�Pf�[�i�q���A�-m4%65��;G���G�v���$K�m���!�HD�@�<���<���'��I @ � ��   hă���W�2y09j�Y�A0�!�2� r�%n�S��\���11 B�`00�	����t8g���a���H�I�����!B#�!ⱃ��G⠂*ݬ=>���c@ B< yB�C'�B�)���M��M�vo���,�u�p'�A`��� ���4��h���2�F'&�tY�� ;��C�>J�&Q���=ɛ��Ř�j	٧B�[<��%&f�O�r�ȐC^�<buvPB��R�rd0RF��2s���:� \��G�-�/��9��Lk�8u(�MM�P�Q�F`i�D�`|��@�9<�� 2�t�X��1��1�11E��H�	
%d 1�!���ن�*�lpH
@!`r;� �"�x��F2�#�~ũ���o�k�H@�E�h��������+ �<�A�� ?Λ�#/F��[>"Y��h��! c�EA�A`r2�e�!s���H��t�\@i�(�@��7�CDF&53�d�C���6 ���� H����  
	�� |< b j$H0�HQ�i���O�� �� �#���Q����� 3��SG��˥Q_|f�:�p��0�"o�p�LR쒢MH�6�>.*!%B,q�:�،�sQg��@�h��v�42H��>*Cm��㐉1}f�d��9z����E�,�g�,yF��e�����e0s2K� �&/����bF$CD�Moc<�ށ �0�̯�O����DM�Y_z�0KG�.]%A6U�����ql2�N��D�R% �2K�b�l���6a@0F�؅�b3��J�#�a�'%�
�6#^B�I�"U�l�@�/!!��@X�`6��BТ�}T4�(0B0��܆������+l��DQ �2	�g��qB�� �b�y���K�P��	T�!p������r����ŀ��ENp
����8A‚5T�":���� �(T��H��hd���������1"
$�T	`$�� t�� $ -(m�dQ01�x����"�@�){���&�X������Xa�	���6��$�t!��K��Y���FL@���h2��#��� ��Jdt�K�!��Ib� @G��G �'	�>W� d��0�L�OpL�'�p�Xb��٢��ĸLi`���!6.!

����*�q�2<>1����Q��Ȋ��	�鮊,�da�R�,���/�փ��f��GD�|�L�y�1YBq��	��� 1e�r��R$F�"�Ĕ'Y���,4V����(h��AУ�(uƩ�c��'yL�G9���iB�!�p9z�̐
5,~���?�Ӧ��Ъ  �8�  !�x02ˠC`
����pPT

 ���{��1(-c@���#,���q�� 0 
!%A��)jt�0�p���C``R*L��h !H	�<b0
Yx""$"  !��=x�'A�}���9�A��XD� Qg�ցM��$�?����(s챍M�qv��i��G��=|��Hc㠓��5�y-rp�B�9a�Lخ�NDBr$ݖ�S&I�>��b�3*Lx�K�y�2?�{�sB�#����)�r�*Y24��!�T���H�q1�ᒢb3B@�I�������%-
�����=.� xҎ�<� ��
���9Lb������Yf�&����S(*�9��	�Aj��S��I �@�H	��H� x�D@G�)��q�S0ڌ��7�5>������:Cl0G�I�Q��_�L]抩*d�0 �)����*��I�h��1O�=��(1�e��1�&3=�� p�c�dTq�p \�D88 &<dHF�a����0(��
1!%,���A�Q@��A�&��P���q �B�6mB��0�Q	���S�K� �QIl�O�
&M�;X�aT�8� ��U���2Wd����N�\�d�P;�0H������3��Y��۴H1L���O� ��la��%1�	�2/���e69��&m>K�M :K���>6}��X��A� F�<!+ ���<)��U �r��fL!����]~�W�h$%Ƿ��c�q�|˼cُ1@b���9�'���a���&��9CF�	(� R�A�c�>"8��ʄ�<�l2�b����(�9t>�M			��M���b44�1E����`��L�2�=WhS%���%&D�H�)�4Y�M��o����͆�Fz���p �?zw��   I��!Dp@��L�/1b�Efy�97y�_�]t�X�"�(%G�Ԝb�#b���az|�-,B�a�x!�

�HP4$RD(!:
�Td��a��A�1��<�)2#�h$�Dt賄Ȕ1:1
��"cAXL)2�G�������C��A�=zl1νd�� h�I���1�1
��M7���*��)4��,�(0�C��	 |J$XG%�:6�$[�.�V������{���Գ۽�T�����4�`��`��l1�@qcdg�2�
b���m��%��p��"%^���!9����.c:�أM�w��rH	�uj<�#��u�/�
�ȳO�?���U@^IIb�PͲ�~��	� ��
E�C��M���Lq�����<;t�9�1k0b���6L��1<2��c�ɣ8P�ɀO�/y�;,�R���,�L0�A#  c�x�(�Ee�*m.2C��,�6����&T�DP�M?K�"�	�y��#�^��(-P   �����+���$�� 8 ��d�H,��W�q�6y6��9�# SFc�"D��a�ӧ�����M�#`(��i.�P��	sB\<L p�(�!�(���` ��	��H����� @\,:� 	C���@��"���b�a�,�8>*1���
��q�:uT�&�XtpȐf��X���e���S��#��!K�
��uJ���H����Lo>�|�+PN�b��J��%TL A�Ǖ�m�1!U\%C�<�/�</�1�͛��] u*�)����3e�L�˔A�Y����:�/��<�t�0�8<%(��0�|�WP�{�|�	�`��(� D�#j�D0�0\tL�q	iQ�A�M
�DcB�K�	��x���Q�p�Y8���!Ddxb����D!@((\g�M`e�?>�dX a� �B�F�B@�&KJ�Kt��<���/XA*<�	�Gr�M  8 �Ё�1ufȲ���ǔ�ib�"D����JB"	�g�>S�!,��,�Q�p���H	�$t)
�#��2�Ɉ,0c|4x�@0�������3"!�C�("CH!D�,�@ĸ@�$O��@�M�>;dł��L0��pi$/e�j(�M��d��9"T*�,!��ȑ�@��O��%K���A��ɐ9l�6��4!(\�&��N �> J��yn4�.�e$FpvFL�cL�e��3�@B�m�Qf	�	4�1	ᐰ�%AA�M�*!"#<t8��c�'8l���6���W�h> ؖO�?D��&��w��}?d�C��-�7�9�8���yO�a�zP�$�Q�2�dAX��b �)�2 &��	#��(��E�6>W��Y(DD����WQ��ttj�q�@���/sN�6<M09Rl��,)�>"E|2�����X������4:�	 ����$���猹��2u0�6'|�cL40`�:1��� J"�Rp�ep�2`	�������D0X0<Db<D$lT��@R BLB�MD�B(��!h(h@x
�(�L�#  Tx()��JD�x�كP&F!�
�u��.?ɝQQ5r(�7�'�%cbl�O��C
%��㓄�A�8.!yL8 G�K���-8 "��b����?s��Є��qpH�b#QQi��K�It�s��r�&�0C�21s쁹G������6	�8|H�,>�� �1dxF�� @�]^�����t$����M��l��y魷
~Q�2c�e��$"Q$N"�m�TadA8�$�����&G�O�fA������Ɓ "�%���:"f�Q�8� ��B��cR�!a0z�p�9��x���:���,�8�Lh0DA%!"b���@��EB�"�����gYF ! ��hC�aӧO�,:3x ��Xd�`@�U $��b��G�2a(�B(%��c�,�8f$d4,s�!�%���qh�a�s��ȴi1�C�G��NB@�H�dRbB<! �� �BJ @C%��CȠ'M(*��ATx�����(�Ԥxޑ��s6�7��B?I�z\:����'"�$��B�Ђ���c��ÈHЀ��
d46�s�P�؄]t���� ]�!�<&)�h㡳Y[&A���,�q��.w��C��H(r�6/p�os��yȀ,� �:�$H (R8F�,��Cl|�]�*	o���<͹[�<���88��2�9xR��8��T��GW���
�L,�	�
- >e1�i�ç�L�F��v��9�g�yr���7ӆq���q`���A��`~L� �@pI2�[�IF��B$$BI!���� ].�q�6���~�-.��   ��#nP2a�1�f�ǈv��� ��0��<�.�y� r�3&R�$�X����G�I@D5�-�X�����@B(��F�.��G��2��	B������H�(�P� ƨ�@S@&�	��J�
}8]|*�8�a���x�ޗ��Zf�{�\���Ł��S�M!O��� BE%#�A ���H�pIa"@0�M�m�I�&�@Y� M0=:pB��!�,#y|ʜ#ا�]���s�2���mdN��i��h�I Ը�" J�8lBR��aL� χ|@�1 db���F��W��G�̾��� :Oǧ!ei�t\���F ��mLY���:'`""��L�0G�c 2Y <L��2�LbN�Lā�2E� Ӭ�R��$IRPNXf�-`��������n\�F��,!�AAf[�9|��7����#"P �? ��Ҧ�H�"1�S�\'��	���Ӥ@bL(Oh���a��GI$���1#�����@ ���Xi�p� ���$$��Rƌ��3�"��� @$ ��8��hp��X 12B�O���E��1
<j���J A�O@�"u�FQ�,�\����h��2Lr��L�
Y|�P01A�0���B ���Б�\
 }\�ca�� F�I��8��X��>
�p��t�x VV&GL��8���.e.Ӥ��p��0÷�b�cJ�.UB�LAp�dQ�p�
��	?d�-$ǰ<���z�y���� ��ʥ��# �4�s,�+���	yN���H0	����gL�$�6h �y���p�y�0���Y������`���u8
� ���_�,���F�� F�
BD$,\8(�E�G s�O�'!4yV�w�A(�?js0�ts�9 #�@��@��S��1�\�f%8i��zӉ��Ĕ�i<9�r�S�))�L�`�8`�%##���}��Qmm����EIK�=WQh��"��  >		� �'   ��$pL�R���L��.
á�LHTVc�y�ɓ?b��Dc��!����d���"
2�$A�%��b#Y������'�
�q��Rǅӡs�������E���Fbu4��Ⴡ{���(T��8hx��t�y�䙠�B�x����Y~�y;�̈�eH�c�ɒ�O@�����D�u\:,���	]Bڜb!��S���D�����"�U�(d����1���WF��{�P �)�A�h2$9�MtA<���	Ha\���#2F��2��#&��CRJ\�?�2)52�Q���Rf��>-*DDPl ��8 �3�K���׍ڴ3ف�s�11ڽC��Ӌ��D�Ȓ1��#�sc�CxbNY�2����7d7�>&����������6r%L 0x8R(@ �C8��FH�2g�@. �w�e�D��,m\�p�'�T���p����"���!	e�%���GΒ%C�[�`�mָ	�JXV��Tyʻ�.w%����i�n��1H(�!���@B@@�H����
e�L��.UlR:��!hp��D�B��.���kxNՎ�Y6c��&~>��L�![y��=�̴N��r���H Ll����4)\�'d��ov���$MN�y���DР���������\Sb�� zc<��ˡ��
y$�9v}���7�S ����W�5>`�>A@�C^g�[x�PG�D���2#R�'�����}vi�4
s�V���1�𐰉�0d����RҚ��]���Uq�/���5��DĘ.g�)*S>ƈCtL.�Kʘ�K ��O�-Jd鑡K�'pH��N�g|R��#Mx*�܃�@Y<+ ~H	�65|�`$8F�0�� �.�p�Dݧ�f�e'92Iݮ��#.��	)�L�"�A ��Y�Ag��dBJ�>2*l����`r�_c��s��>�N� � p�  >m& V1�<B��Y��M^�{T��"��}��c\�y�F	���d�������CS� �#vQ9��!��=�����_$9g�(@_m>>�$ )#�DL����HA8�  �H��HQp`�TFL��0CDE)�=q�9y���=��i=Ot.�"��u��HBT,�M���!:��t��0�K�1kk��Ef�Lq�6v9�4I��:]f9��{��E$՛��D�P
v�.���%�p���X\%��]�E��p�1]~��o����,s������1x�Lq��PE�@����G�%~��gʯ����E�yB09R&0`��;�ā�K1wE<c� Dw4h"|��8�i��R���	.k4��2�͐N9�O�2C�}M�x�7�18a�����q���&G�K�*��AI	   >h (��!I"�,��2*�2�`, *Y8 �C�� R<)&�|�# <1)<)?�+��zf��3�x �1�ip�,��؄X�w)�M�:cT|�%t8r�u �xX��	�tF��0�XZ%%�9-��`�Y  a )���@F��F���GJ@�B�,BH��9BR2`#*datIIQ @8z�X`!) "��`q�!�d��L��9�$Ƀpp (x`T	
��l]��gC���P>}(&
i8+*L3� �^�u���E ��8&�(��	�<#t萆�B��a�[�f�r�M�F�w���K�5v��Z�" ��.U&��a1�3p0ƴ����c��9�u�������'/f�  Ѝ%̚gRUDAF

�q,���l]�����k,R���"�q��yl$2pY��}2x�8��62 ؅�,
�QI0p�PDE`�&:'$d9G@���� P�0C0B�uƩ��	EZ��P��� �y&DdA�㎵����!��F�á�Aq�_�.����$�pX0M\.#�MB�,�<`���l��DL��X�1�"�I�:�&�E�Ȕ���q�@B� � =*:�@0�@t(�%&!#@�H�0r��`�P$��.�XpP�r�@HH�J�S2 �Dx� :��` x8��9��.������5�b��0�({�����C�M
Ç�a���I��(@1Q��N��<� >��Na�05� J�*�]"JP�Ҥ���F��ʄ61���<�:����ӡ��(1a³@H�U0�BLL����2g��p�g��1�3@5%�)��"�+�'�Oy�,�ɭ,h
2R#M,1	�3\4RTN�Qy��J�)���e�uT|/���W)�.KX�D��PB��;�"0f�*<��B� H��Bhc��!h��B�`��FJ$���ߑ!8�t�!x����dx������q�1G��=o����C����#��)��a�w��uy�5.�e��!6�l����2�G������8°����ã���1��# dX
BR<� �):	)21\D""D"&��0(2!!��O�K�SR  ��2*E.���p$�4]���1�FB�6�Xa�AA�p1�a�1�����>�K���X�4i1���(� �qa��go�D�**u"9��
U��T%4ev�IAH`�E�,c:l���D�3&xp0r�<B`H�H��Θ��v�݄�1m�8$���fo9:��9 f�1
!}^�o����8T|Yo�T6�����7I�C)�U���A��M�HX�ĸpTi2{ְp�HH��
�B&���9ӣ�!EB(��q�8��O1�1���`x�R@0 ��L`��I��$� ����M��] ��&���Pg
�!����a�`�@}�}�I�#n�9.) ��:*}(��\��G4����!2���Iy��8�XGe�(��2 %K����� ��#� �#���KAG� x0� 
������X0rp00�)9�P��(��1�2�QH) �Q	�D�x`Dj8P0:���$uz$�q�M"�ef�q�=l�O�eA�&�H�������"q��@\!K�A48!��ph`�fPߧ����%��0IL�&[0��C`���~��d��b!XA�G�@D�癒#!������Xf@��`G�mdtd���颒AD&�0&B#�Á���W����ó���������ORU���N�j�>a8�1�b�r�"��)Y���i��2.ML*0��AB��� L�Ej�ɓgLJB��l�@��O��!D G  

y.�d�� ١M>g�c��`�����M���x(<�J����ABD!�q�ȲR�
��<Sl�H�"�4Ȕ
9��2m��Yz@�1�2��f�66Yv���F�D"���ǌ�,�8"`��ᘊ�1� fe���A�P �A���Cr�!��xp�@<D4"8 �&"Cq��@92��"�8�NN�Γ�gI@A�Tك�8*�H1�)<�FE�{�h�<.@�
1	 �F̌�����lp�&iV0���0۴��t���#i@�G�Q[B�s�����:Cb��h �NȐ	3`�8�)�eL�R0"
:�pD�&MZ�`�9�B�b���|�����Mb�;*�V��N\�y�4C �� �b	L�b�e�{(H P8�e�YL�Pg�5N�Ѡ4����W�-f�#����&OCu ;���')rL�,��� 0)�C��! 4�3B�&c8�8�< �AE�"C�@Q�t����c2�'"!C	��H!p�t�qh��A�d�=�\��q��SD`�	�d@�ба��XC�� >@��z,@F���$�����0��`<��@�(��0>���""b�E�B� �a(SC����G�=��H�	 �,��0��P"t���e��	�O�Y��H�O�M�*&��'A	�c�#Y`��o��`p54�0r   U[� ��>͌�%�+EFA�aq��f�"{x�,r-�B%C�sKv�9KlB���l��*B�	0��7�<��K�6*��O�*2<} ���
�XX49!AFg�=�W��7�5FO�g�$|��j ��@\Rۚc$\�)���*��٥c�	k0��rJ�!���!@e�)�9�SL���p�H|�%<>�@�6<N���� *��3�'� �`�?J@N�Ӝ�O����`��y@�
��PxdL�P0S:�C��HP�8d� b��"���qY'B�g�ᷩ�M���F�O�:�X��49~�+h��U:d8f������H�l��2c��F��8<%%2k�x��� � �H�XD�p�C(Y0 DD�!g�������ǥD�Ex���0�B�gȀ��`�@��q 0"F)S�C�<�d�����H�Al6!l��1Fo�g(�s��a(�{�֓h����I��i�c�c!�`  �R} ��_e�x��LP��b���QʼF��,�e�k�V��0"����e��A8�
�\��>��Cf@�B�Y&d��p�e�(}D"$^a���cztx��{6p�9����w�c8~K�=��'��� �ɞ�vA�9���.�@�g�O�'��3�)rR���	�-,���d�!�p�	%D�|�:��wȲ�:y:���C��"�b�:sLb�"0&I�.��,D�,��?d"���	�2 (<�����SD��Q��A�@(���<�\$C�߁��Y"De�o`2`����E���b�I���y�!E���:��s��:%*l�Fǂ�����`��c��!�D���1��:%�$2l�) � 	�	Ā�b��O���5Ƙ l�pDX�P8 ��@ ��4(�,� }t0>9Z�XI���A�a"�`D�������EB6���E��&z �ȡ�j@�$�   � `��P+������Pc�6i(>ی�@ v��$-R$��ر-Q`�L��0b+��˜�&�3�@�@,R�#B�sHb�)=>�>gh,�S�ƈ>��'Ć�H?�D�}�'�B.;O6kñ]��� @���sJ	@�*���W!���
5&��E�  $! ŧ�UL����g��3P�h�e�>S"dL1j!����s�&�4~��8L 4�Ó�����@ B�!��P <	:�)�
O� �!F%B$A�	G!E!b�cR0�9Rl1�M�Y�OS�#r��\�M�ϳE�1nP`�Y.C��i��08���A ��Y���!	F�@�C�ɢ�%�T0
��2���!a����E��H�	� ��I� x$$@0G�AH����$�K	��AL���$���6��i����)>z���O �w(08 �  �D��Sea+%ʄ��H$=�P���e�N�41	L\Z��-oS(ytƜ����Ev�	8�D��إ�.1)"v9�'<�!�ѡ$#j���d�����CG���E��ek�Za�w���Om����q �tQk��+�0L_jL���� F"�1M .p��Y,�`�����2GL��p4I����)l&��!5xV�1� ��">k ,")>��(  	���!��C��3��>�c��Ht�PX@e�O�%��IH`@B��JJ��O�
eD
b� �S�N�2.G4�9�@�s\0%&t�����1G�u�F�UT>�`�e��`��3,9 A�̘a9�R3 ��� �G��" "Q(@�Ѡ��`1`B�A�)"(#��s�`%�  aCad��(�( t(*1= )t$!6rdXg�E�CH\!E�"�:}I��hO�>��"��������4  8D�@H�ʄg\x���	B���aBQI�����A�!f��=TFp������!�Ĵ9a�	��1�M:@8D� 6�ؤh��p��!�a��	6��'���,��,��D�}B!)ew}�]'^����U��gr Md�M�}=1X���@��У�:�t�"��  �Q���eB�CV�H(��&���YBx�,�4Q0�g	�1�S"��0�$ A�4-�,d	I��)��>2�"8(��a�� @ 	
��@`(	)2"��� ��9d
�'��� !�b�����!0���?�7��;���`Q�**cL1���r���i�pDC$CdI��dN��dHDY�M���R <	GB&O���<|b<:
! �L��HDH�2A&AĦEB!�E%E!�D���� N� �\g�41B�����!�H����=
���ljO� ���|��&D�2     	���{��l�x�>�2I���$n:Ҡ��IJ,�ac���5�-��@�����<S6x��rH�u|���X��<��g Z|�9:��`~��8́��q�Y�+V��|�O��i�����j�u��]���[H��bХq�|>AWeZ�m }ld*� � \,��t8f��@�3 .U�̑ŢK���G��H�$��L��1��!��I�1AFHG"1i`3E@�<	S#��7���2y&#B�D0TD"<  b3&DG���p�Xp�h�NH���,1b�� �W8ç�1�&/p�ی���/Sb�.K \�y�,�Cf�Ц%ǣ �h��@���X��QQ *Z�  AFC� DPD
�D0�����1�� `c��q9�CBF�0�P���� R 1�� ��K��4mt�� T ��|����!�<����A�0i#����l�|�?C���� �� b 	  �x�>�c���dY#��,�l�`q�$�d Γ�f�!L.R�w�M�<�U��s���YR�p�i�aa��1�|ƀ>V�XDa�K�<s���ߡ����<W�%���"��'c�?�� �s\˲\֮�.��1%!�e ����B��`y<f�2aH��6�2:3�9�F�R`�H��,�269gh̳�)6�<��,��b��� $=�`�`\&��<�Y�����"P�� %B F#�B��� &��E!"�a!�8gĈy�-�4���s@�M�X�¡І�p�����_�xdh��K|�11�8#Ag���ӧ � ��b٧@&b��6K�d�! ��NB�2:��Ɣ6����pD�'�@�]x>!#("�.2 ��2%�J��	���qI�Q�b`! ":@�������U��*� t)Q"���6�@AC�==�a�+���͓��Nﷇ9	� @H ��7���iL�`�`6�*U�tH�a�$�:���<>p�a�#ʸlhèp�6�D@0�� J��nb��`�!>S8f)P���<�2�e�����`��!�8��}���7�)X��K���.�LQ��- b�&��� ���؜��1B�g� �G�,:YRC9lJ�a��.	�y$Txx �!#��,��\�x9b��o$}�3�n}q�s���m�w�#@"������d� !.�����@��O�i�� �HDH�����{D�0`��8e}2�q��f�"m�A�9���Yh��/C���	��g��:3,�A�bFE�PN!(�R�r��}�x�3bĒ��m�=C쓒��:���E�'��AHAT0�H(�ӡ��@%�M�
*�0t��8�+�N���̀��S�Lm ����JG��,4��m>���?�h#��N� �Q����N��`��O�9̏S��0)�@ @�&�sT��@QH��,� D�>�v�����&.��8y��k,�c�	c. �4%�HP�q�,�8DdyH��o� ��<!��K��	���{�1�A�Ͽ�O��Q�?��Ĕ���Q�8�=�M|�_��D�'�x<M�%�D���,  �RBgD�y���bn���I@��ϔ�����**��<k��*`<R02cJ$00B
 ��nQ�K�`�bc�&��</��!3}[ۍ�s)��<G`:��ـ��m9�{���8^�32Z� �\Ó�%�c� #� ò'�+���B�s6�Y ���y�6ѥ�Sd��e�<�.OC�������
#bKt9��!����2��1��A��$C���iF��b�5<�s7���'�h�:Z2V�����D�X�bmw�GNl8R8br���c2�' ϔܨ1�.Ә�F�S\Ƨ� ���C���E���i�
�$HVk	K��Y@I$ E� h���~��<fO���I��h88Ӄ��&�|���mJ4�) A��7����I�%�oޯ�<h �o��� 	�Sƀ��,.&-N�c�}2�7�<1��q�q�-v���bW������73>O�U
t �I�P����9g�|����|�3DVi�=4�Y`��s�k��x�i�$-}��hZ�;�q=����!�؂�0&�C�?��w�ߓ�d�H�<m(C
Ա��=��_��!l��a�GGb�K�#����"6U8�\`��J�ņ��&lr(��ɻ��u��gT��M������1��O>�ͷ�b�<4�L���A�papbbBB�r�{��u�\~��^�L�v��{�f��a:Z[�dx�����XBX"- !`dd#�Aq^�<x�8#E�<�s��ҥ̀9v8c�.'>�����1��g�W٧���d�C�1D�
�(`B�RP jJF�s@G��ц�N����gĆ������TN�.���,�q@d�����(��*	Bl�X ,��f�O#~q�0(Y�hc3�3��nI����@¦�  ��. ��Ɲ��#vd��1ۈ��Y�0݃'	
��N ���'%�t�����x�y袿%vYZ��d�2Ǩ'd�D��2!B� 1�'���U<����B��&f���I�v���y�G4@�)�K�:]�-ڼÐ"�x����cvY`�)W٢ưi��s����8CPTR��2-&�
M4z4�m|.� �o�3\��O�O�u��D�y&�<��)��P٠�ǐ s�����<�G�3�G
�� �!FFጣυcpF�	���M
� 0�L@9�K c�?�e���9�@���q� 0 �`�(�EH�u�0�$��_c�M��D�q0��?gr:=���c�  	� �$������)�)*M����}tt(�'X �\D&����;��ѡ�A�:�.-<T2���gIKFK��%a!cjJ6�r���B,谴Lȁ�!�D0r�q���J�*<:&� 	F�<{lS��$]�� dp)�����K��8� =@�0  ��ld  *���C��U:(�D$�!�$GD�� *.}:0�dP�ӛ������h0��[4x��b�2\ �Sx\�8$Yd��5�X�cB�.u|\x�H�bS��!�.�I��}��a2�.�������A�8d�Q���(�g��`\���Ty���4]Z���	vX����d1	�[��������"3Ee����@x�c�*� �F��h2�Gf�	�<�d�B���F����U�,P��x��sN���Q��(`8��c��E�E������y�+�aa�P���"5DA�  2
L,B(����$�#�@�"p@	��uZ,�.�9Z�S`�W��a�)��(��t� YeD�L8�`��@d� G�а���a�RQ��k�,����!A��죲�)3tC��h!���Eǁ��Pa��,S����&�w��A�0�\`�!�H8� 1
 �(���8�B��M>^�D'`�Q4*�h����$B`b���ѐ��J}̡���is�")l:��h�!q�M��G�@��L��a���	����%"C�:C�A��E�� �`p��,�B�R&�̏��Uʘ0Ѡ�$�A�MV� $Й��>�a��U6IQe�-T L�.*o����In�8�\�'��EE&���|ʈ�e�]:x|<��!�Ac�1����Iɣa���G�c��(�0`F �A�&Ϙ��Cf�M~�.!<SD <�LDL�0\�(� 1\���I�e��y�2��ba��MKN�PS�g���0!�	� ����0�4ј%�G� �)��"��`�pJ�!" p��-Tp�b�$E�aS�B�(}"Ȱ$Z*6��u&P�����"�c����r���c� �r����#� m�P���@�A$�	��\�E�9�x�^&F���*w�g��!gLA-4�! 2�	��cT2h+�C|JD�:>P'�\���b,<���m�r��H0�w�"������	ąѣ$�ä�B������!���O��	`�{l3�@�)��~��{��S$ �Yg�;pȜ����F���*ƛlp�qLT�� w&���)���x���A�A"�x����,
�����.�<� ��<Mx(#�ᓲ�8ʸ� ��X���<-Tfɒp�D@�0G�m\���0��!)kPvY����"K��!9f0����G
���G��>�(��G��|����q�H��*�X����#^�����0(:" � ��#"��Q&a�E S��Bc�NJ�
�1	9��6e�d�2� D.�\��eb�����H(�`N�GK�Cv ��cD�>%����PQ�Ye�<��t�Ŧ�<16%8t8b	<5�ECb2��#��pa���9N� �D^�1L�Wxt��ST�����6 �. �� ��
��C�a.kN,���{Ѱ�B�~a�"a�Xf�Qv!�,���ÅR�E��l��M����2E ��� 	#ã�0f��&E�&f�>C�"=(�D� Lʸ|��8� `�&�$#�A@�y�`HL�tJ�2���y��+��[��c���JOp���>ß�Y~���q�V	�$�9�yd�Jl�r�K��>[\��E&�8�!!9���L�"�eRd���@6�9���J��N�U(BX����'�����"� @"�A�\EAg�<;p��!�k0��G���8�>=ZK<L��P""x8R8("�D�"&8PfYd�oQᄀ��X�A�t��,�I��@��`�1�����F�S:��$�q��ȩ	XZ<C���ѧ����'���(��x�0d"�(d		Q��@X(��0c������#�@L& M�>=�I!H�QA�F�Ċ&.�c��м�9�룒�|[�@��' * u  T� �jn��.�LR�B�oL�E�$lEd&��(+"1Q�{fs��I:���!��6%v��%�GF!&e�*bb\rtY%�b� F�N��;<�e�ء���Ő�9ŀ 3A@�8���@�
M��(Br ��tA���E��ϡ�M�2� �Ƿi0B�os�{�8L��E�J�9E�g��+�����:
#�.˸�4�)0���3�]ϒeL��%��RE�416ב����RbD���U RF,r��fiS'�! �pĨ] �D�� E�!l��x-C>�<�c\��aH��̉t�ءfI$ѐp��(*DBB
��`(eD�-8�HX�gD�j(( "Na$8�Yf�w�M�*����c�/�C��Q1t��Q:�X�!���2%gʒ�){<Ș���bB�E4l���2e)C02!eNY�ǂC� �2�$�x�C�xd `4|iv�ɠ�^��K�6��$�䛼l~��\B(y�	p�����Ʃ�8�6����5.�
��2L�������_�U´٧��8��e��P& p&���)v��H�)���M�+P8� T<�`*`\ ��Y�I�
)�����p���.%��#f�w�!���*)�u(��D�.M.�Xa�"�J��E�I(�9�����fi��'���&���.1�p���!�p����b3����84adQ�Ā� ��HD��p�c�c :Nl�Ż�9�������*s R"b�
���`l2�A�3L�cy���E��(�+09�� �f����i6�x:<��c�"a��$��6	�����:CTL<��s�2�|��;h���cJH�K�>E��܃�2����u��l�G�Y���Чc�G�4&�ѣ�i��)�q�9�q�l�8=2Nr!�ی���F��D��DaJ1���Rg�	W�BC�cJ�A�$��a���N�	:t�A�XgH$�����C�Q����r��pj��KXց�Mw�A����E����{�"Ibq`�:���S����g�'f�}q����Y|4:9ڲH���@� 3l1O�5:̳�>
}&,3E�>�I�N0���b�C��
G��)_���찁I�c^e���>�A�ˤ Vق2f�%8D'AD��� ٢�,��"I�I��T���E��/񏉘�4)r����&�9�
�'@����<m6���0a�)<�Px�<��
�M�, �1>t��O(�p��q(��`�Z"���)}Vi�J�!u&�f�<.LJ@�`�#���0�!
3�<��ɗ�dC���d�	(�a� ���H � P8 J!��p�R��>k�|����.UV���-L�4��"�ǄW���U����O�5"��[[���d@�19�T\�ca�@`�2���2�S&$B�(�a��ǔ(�A#e@	�yN�!q�	c2d9'��
�d�U&�F��Y��f	�u��<�F��W�������	\���@cA/�GݠF��M���3�η����dj��3�|����p�_�k�"��p�)cp�%��pZt�`��rH� ��<:>:��"���`�!�ɀ!�{,�
z�8��q~��(t��4�YdJ@�1��L�i��L"�d�<��0E��l���m�q�.I~���>͛t@`�|�E�T9�Ƴ���+!��_绌��C06��#���q��
9z�� ��x�G� ��a0$�AQ�P��0ā� d E���*�L�F�E� ����7��t���"�A�p�1P����N�6}B�����I��s�	���QC(%�09K����!  B
��@xHh�r@��tH��A��#��ѩ��>6��[|�N���x�G�� ������d�
��J2���!q��`@$����eL�EFG �1 &��G�9Y88lL:�#�\��G@`�&=F鲇��!���Ȭ$��4kdя�X� _h# ���a�O��%�'g�T��3QU�(A�8hW�����n��pt9��I#�lN6��ь��y;�͓/�eO22g��OA�
���8�y� N9�D�<�p,`��a���PFd��)�h���rd�m2,q�"Iy��,Y|����b���ϐ/��1y<R0t�I2E�U6�f�#�cc��d���4��>�🹓/1���18!K�9�}R�C��d�a0`Ĉ���p�P!���8\�!RV����b3"q�]E���unS�VqQ�>y�����  '��8�&9�DpPb �*��N��`�	B�q���9�=|�m��<;t�P5	��� L KD�(B � b(J��&>'�bCXE��������`0K	�o#p�2O@�c�u|x"d��DD��}.Ғ�`jC2̸ئ@hƠt�������C���0p��ҡS�ƣE�}�>6l\4��Ȓ���p<f!�O�����F�"�G�x���<G��n��0aX�0RdD����4ì����a�8-����H���$���P:��$XI"B� �tQh"pIPB�� �px����0�&��```1�e�F� �cB�y�A�b�,Sd0S ��<�D�M*�"��`RDP% �J��2E�=l�p<2$Y�u�����>���g�.�&���,��C�=.q����"�)0T�!�0�:�d裠Re�"�h"�a #�0F�M�Dl �A1Y�2f=�Q��JJ@�K��Wy���mz\�������1ʒOD� ca¸�%R��]��md�K�f@K����G QBD"J$��P 
C�ࠄ d)�����.�evy���l��&ǘ�@�>�<��T8�6D�I���f	�R!a������,azs��a "D�2E(� �I @(1�)	��y�P	�a��":r0� �1�0BL
��a�H��<u�c�G��w��!��8��;�^�@��׿"~y@>ҢYt���Q|���(�h���A1q�$8����*MLrS�9�@�>��X�6�1Ul8*)�(lB�P(� B2E�A!CLJ�� �EVy�	�uD-J@����&�K�>t�8xXG"��#68#�"]Bd �CD 5N�8܃�I@�".��r
�M��0`�U�ԠPlv�g�'y��|���G��d��	EV9g	�CF������\����ࡑ!��B�M(ژX�PE�!N(`"22f�:,6@$P���j\g��F�,&����x���B�� 	��kRPlz�q��9��
'z0�! ��I�%b� %� 0�B��@�y 9N�I��B ���	�Ȩ|�g�����!��Q`�S��.�x�6>ty��AȡrF�
��D�1DC�ҧaBM��&��p!2怚3�$:��A`xx0���3,L,rt@@*ؤTh��Q@�%O!�-4 �q�*G�&����u*p8�C� �1��>�&�1��7��O���O�)�����"iq��P�%�2�P�8F�\n�L���<IH�$} �$F2A�*%T�p����P� b��T!�qxHL�Đ
 0"}T"*.	. ����*cH��@y��
>5t(��evIs��'�N�#���&���D���Y�
�\j$�꒱�8��O��x�u�h��"6M&�����#����
ML(
	>=���09   ���C��`ʌ��Q��YG��\��d��:�� !�fJ
�Ǆ\�8�>&r��!I��L�`A�!}��C��%�q �A #� ��`�0:,�d�{�~��	�yZԘ�}]��pƳ4���?�&�؄b��`�&%DseC8�H��4�DK"! �"0C��)A R B�@
G�J�6��� ��
�*��x`}L!Op���#���O�r�P.mR#FG!Z��B�#�l�^�4)�K|��,���2�2�3�ʦ�l3C�S����
!�x���H��5�\��21��EH�$���c�>* �������d�<xtbR*��� �.����a�2�D�Sxr�P�Eb2�DĄ ��Bb���#�{4��f�q I���}�$�piP"�&9��:��,C<�.����?�&S��_c�?s��z�8A@V���g����A�f�C�8 D<��0!�`�y2$04z�Q�ЙЅC���+@�٧LH���x����i��X@d�!!E���PH"�� ��#Zw2�TH���I�aײ���Y�##�"G�B�x,��HDL(  �` "�
`���x@z�>�%�r;�D���o��=f08G'a�):?d��*��M�5�&.�6�����de��͔Š(̜/3�GIM��C���f�H`�J` J��OB
$&C�H�,#: w�Y!��3I�	{(�b����e��9]8��m�a!.ڄ�{AEA[Ii �,��n\Eps����1�E��&����ꔸ>�����ؓ�f��}$kh.��D��� �PX�G�ѻ���f����o�Rd��L��Q�r�,H�� f�;o4�;�eec0"���1z�5�R�2e�	� n��p�+�KD	�!&�)�as��5Z�l�2�Ў��m5s/}��ۜ���>_�-s�/Q�c���*_��u��7�Y�Pb�=0Ѯ��7����"$֡�aLH1p�qq��(�BpL�)��`2	.s,�Q���K�F DA`�#$^��"���	��aa�cR�k�:*1���ʹ����sf��ނ�\�n�H|��\�e��>��&g��)9�K" �D���(�S�B�!Pd:<K��X;k����m�w��P��ɳ=�w���'C�MD��<{d`�xf�[9��I�"��b�_�*�&�L;���Yr����q��15�G�I���y2z���r�+d8�g���!hL���8<pv�6�!�y���1i�E���c��	N�K���Ea��H2B�+�uztP1�$�5O��3�[�TJ�:����3�fA��.��i�ͦ�e;D{v�iU��y�&s��c�[�S�lҷ@C�l4A|�|p���I��LVg�o��
��E�9ޥ���CfD�6k4Ad8�г�4��� )�O#=D�ѡ�a��K�S(1�x�}8$�� ��\��s*x\"aĻ`^f��!��<>�}<���7�����8��5�{)!��;|��e��.� �9�'��	�_E�+X�U�
u~���ۀ��)f��2���O��.ex.�.6x$�3D�E������`�p�� �L@
�M�*��m ��6��g�dJ���bǤ��q��<��.	�"Q���i��yx��ȤU/ԩ�g�ɘ{�)�TtXJ,�� !J�Q08bB	�����@(�E� ����+p ��I~w��@�]I����c���%+��	8c�g\�C�<*����6Kv(�E�6�X��ۜ`HK`%CD:Z:>>	�!&�e�����c�
s�H؃�$R4A�AHL�)2A�u:d�ù��i�|��I�:Z���TVc�TP� � �s53�D/y����SN�.���)F�.y��@�I�d���ô�/!�M� �'�oRe #�b�u����t��B �D��s��t�33� � bG��09�.y<�t)�q�&w�Y%e�7������$m�$�T�qӥK���k}��$D�$?���5�b0|�I8\�[|�]�X�(�ρ���M��aS�S�&K0T0mR�  l�<5� � Ѐ�����m�y�.q��MH]�L1$$a�!�8�1�YD%Bg�&<���# �1�
�!��R,1K�06���^7�"磜c�s
2CR� �h���x<�	@�0  ��  lNa\Ab���H@�����K|�<�2"*=b4"��*t��R�I�}$�Ad���|0�D�82��(7�)Z¡(�� �G���PrD� |$$T(��%�`�ӥ�E��M��t�)� ��Sa�>��`l���#���l���@A
� $<g�%k���$I6:iړ�� ���p8��=n���"���<|tT2B�1)3�3@B��#C��#$%&�B�#�����\f�N#D'��N��q�\(%ڼϊYa
�O�:��
-2��� :l�J�����7�w+0$F������;�.,��D��h�<�w�O8�cT�~����,G $(#�H�p��'L�L�����2���2%|8�8g�Y�@d�`,x("�Dl�C����|�	WйMJ�><m`����84˼Ϳ(�w_��I�����}���؇��I~����YL)H$�(Q� ��B� ��"AHH�ppxdH��3��6��k��
�N��<�ȣ����1�I�D�>tl\fx���_<�.�9͔�!�H$�X�At09$����Ĥ�(�<$ !2���OH��@�<!�]bB�(0<cĴ1P�:t� �d�J�<06�A  @���P�qf����G�g�^
  @r �� ��,[$(���t郑���r�c�sRV��c�<mN��� x�m��Y ��B�)U
�L!�d��`*(�<��p���p� K��b�ǹ��P��;�&&��Q�)�I�H �<���i��/���L�����{���5*̳�LJ�)22�*Yɐ�r��G���� CȐ"�x��I���*� ���(1F`�U"���
���s���8����2�@�L4�R�8o1@�^���k���?%�O�\c�q���� <D�E�C�ᑀ`p@  ��XPrD�S���*m�D�YC�IX���)�NL�:��Xa�u�t(q�d �9��0�/�$�G�"(�0�eIEINQ�@�o��I	Љ�MX`PVp���#���#E�2�%E�$:�1� �`vѱ�c�)0>:m��)s�9�v`�/�ƣ�J"H0@�6�M-����z��;����Lx���,C��P"T�����uv	�q�	�q0�9E&���c4��9AFF!��"R e�"�w�a#��>3��q��:���p�.k�c�!����[d��+��,��x����Ѽo��������ܖ! ����¡�X
���1��2֩�g��?�k��[�1.�[<�����&WH�b��JH��$��]B|)�cf�R���cb���xʁ�����H�=�Z��dA<"���H�Y,�X�02� "�DG�E�EP%��\�a�b�#�( �!����.�vs�O�4K�?�BP � ���@a)�
�1`�,=>'|�C.p<d��!3� ��&)1�!	Yt�Qh1b��SA�  �Pd9��{:��q~�}� TD,��!�1B�#�H�`8(L�O�	���<<&>1.yl0*�,� �J��G@����BV�8�	| `���x�o��B	Qш F"�,�91Y(����w�wH�J��>G��@ �[�(�%�(c|�5�c`
�O��L�O����2.>�lH��S�Ϣ1��0�Yt���g�.4b��D�#��f�ﱈ������І?��x�o�o�����L���s�[� I��&b�l�q��3`J�}��`��oZ��Y>�c2\��`��.f�"�!�*<S<TxV	��E� �L��BJ�m
��!��fL��.��a�>��M\j�0,.��@A@��.�C�t��m�aq?҇HD��VOsA����
ӎ����$�6!����8�@bD�84	�Y�>5< �@�$L��"SBǂǡ���8��Yg�@���������%��8��8�s�Vƪ@��D �
P�������@0	@��G�H!B��q�Sx\�d �1�EL�4�\e�6���Q�H Hz$��v���[�JJ��	  ���J�L��	���������9����7�% p�AH �@��k��� �a�P(�G!��K�>�U� b0  
`�O�l���G��0Fc�1;\f�	�Tk9Έ�%��l��%�H`6y�Dc��$��ȗ�}f��D���V:F�	���`�a�
.	<3<f��(�9�_�Y�.�(��,��>����absJL�KF�qJ�%$����HQ�Ü"
쀉(�L̲Nx�� b�}�����#a�"@@�+�$��)�#�af�*l�'j�!�`���.�7)�l�O�, ,&P�,y"0<�BJ
�C�'�r�S^�)����8��۬2�e�>2-� \r���Re�U���  D��`0I���i�d�ߙ�==G��P�I�1���A��!H �����`(�!:<1!},/�2&�"##�E�G�gJ�ED�"	�х P9�+Lq�"	��h$�ah���[M�O�m,$L
�` 	 :�E�AB�)��,�[��~�D��Hn��D�&J�&.:�**�3�:l.��#&&�@�L���v��ߧz$~�P%DGf�	�%ʤ4s���1D�M�
��uf�8g�6ǹ���M�i!��r�o��I�-� F�u\@�� X�	� <&�щ��a�5��/��s�*��ȳ�����y��/c�P��)q�����` ��C����������p�>s��9��21&M���E��踴��2&�w(#a�a�ӄ�g�9@ K< � ` ���}����~��5J,�m��K�F�ᑢ��!��#@�p�P���>O� ��Hl�6	�<`��
���@֩��x�%~�� `$P "� ��0�\ �ܷ�7�-��<M��a7gyE(9�`�1%%DC�	P	 ��0�Rb���	u�<�!"��X���Cxpf�ѢA����(��#t A�0
	@����݀/�*E�E� �3�_��Dyq�&��1��:�nr��t~]��GBa(� 
� ��ǀ�brO҆���!�	E2�O����C�f����F�� � (`��)���G��"�i��6	6�./c�r�.�Og3A���+����+�%�M�_�u?�O�R�~�>�JLA���Qщp���w��6�h�4o��)�M��#�Q�%�q���0�!!CLO�u�8���H�����4T
|�'y��
��3L��8a�;<�u��F@�6W�Y@'�]�L�z(!݈����!0�]����k�����������N�e��},9�xq��BxD !
� @$��e2������Z�X�o3�B��Ya�2w�8���>-2\A��  �J�C�x���y�'��ےc<g��BNB ��@ H��'�'! c�X�] ������¡�N�&�����I1A� ` �  *0���K�o�
�i ����Q@D����H�Gt	F���c���H�  ��`�i� �0O�9,4"6�)���:%(1	��x��,��e�0�_�ʀ>�H��^���v�)"a��)>�w���8��\��`��f�qi���f�4週1x�?�)?b0��:�J����!bR��7Y�U�t9CQ& �d�M�� P@gKS����°p��р�)2.	��y<2<! 3O@�
wP)2D���:1C>N�`8<`�,)% ��Ac8 � �� �dV�z_��l�����K�$O2�ᙱO�"#�ࡄD  b
����KJ�3Ft����m�C�P�F�9FLɱ�% @� �_C�����'�-^��Eh1�6�0#�A( �@l$ u(��"6mDt4r������M�IΰG�NQ���W@ � �����џ�r����p�x���щO8xb����;]��\�K�D\J��������h ��� b���Aё8�����G��=Ĭ�Ȁ�b`L
�_�Ą��SI��Wͷ�'�����IB�!QX�6*9�`$Dn���m:O�a2�X�������e�O�u�v�K�|W��P40l�`@ C�qX�˄1
SF,�1Tx�1/��yޢ� ϑ� ���0FG�%��( (�ё(CΈ9�,����1��1�PDB���IQ�!s�Mx��QII`0 #����I �R^S*h��x��8o~��f��1#r�sŅ2F
��  a�p�M�N��,�
��`<��lR��W����䐗X��	  �" 0�J�!�|�����7�5��g�@� ,���$  a0:):%bb"$��bPEE&¡C�r\��J�.
&�9
08 �!P  !Hnڈ	���L����?���c�"\l �B`���RB' \��F����8ïq?�� ! ���� ��(�4萣�$;�)���B�L�YBB�ȏ�� X�I�)�I�{���=��ik\A�PE����m6)��ѦE�A�f멲A�2��<�F�4&>+\�:[�O�QM��.ͨo��BH�	*p ��4h�㡐�=�F������G��B�)Y<<�� �P�q�0=x\�� ɣ��p�0�I� �%$OJ��#~�G�h<@��)<2)D�!  A�M�`.Nͽ���TSА�F��\���*��T��p�I���0		))H�)-�Q9�B��K���e�.*
��,@�x )
�qV�q���I�0aN���9G�HB�`0@H�GDH	��d�t���H�Y!b1�2I":�	�e��@��a��@�E�"�L4�p��iNV�U^�� &�N6G!>�L��'���K'������c(���� ��5j8�<�ȱK�$*�\�N,W�cQ�À�c�E�8(�
ǿ�<�   ���\ޢ����D�����R&�, �A�C��N����6�7@�F�����l�&��/�<esD�O-����T|�@ 	�*  ��s�3���oQF�1�e�����C�	�� �πD�&��桌�<�D S�t1��B�r�T�8���e�3h��a�)E��D�)i9!�T0�p  Y�����H7Q�r�Ŀɗ�Op� �@��pD >ґS��@�}Ƽ�1#,�T1�p8��K�s�dYd�>	��䄠   8  ƿ����)y�I��|�[�Xc���10  �AP"l� |�&="*9�Hp��1I�E�,9�b	  ���4��h�-N��cMp�r94y��z��!�CP��KzX`<�t�p�t(C���?ɽ��ј&I�.���a�`4؂P$A�.
>*.�9r  	��G�� �#��@�ȫd��[LH�AH0$4x, �<.*u6�d�n��}4(.u��I��&�§�۬����q�K* �IH p`0.: ���E��2y�����#��2d E�%"6�kTɠ�� 8d1 X��E��*r�txBRT"R(�*5bB�8ؔAdy�:"��=��)xxl(
�u�`0 �ð�  �x�	�#�� B��Y>�>��'Yp�	� ���   �Cb��r���G��) �;�a���<C�@�     �D��@�5�ͩ�� ̟̽�'�>I��уP   0 
�	�����3&D�E�C`HH"C�iT �A@(
 GBQ@��  x_��D���ET����
�gP�{0� �ă�A$IAa�}1 ( V�
�g(���$�=�40���)
�����.}���Ę�ȑ�`8 )�mD     F��_�Ȼ��6">ER�T )��c1u0�Q���0y�Fc�IJP�t�:��>��ls[⩬<  � �@	1����,钞6?D�ë�P�m�2���r
å��'E�S\4f������'ԑiA��	m�	h�P��1��2[�t��:����a@�F��A!�	��]�%4jB:t �f����+ޢVL�q|�?G����D
�CA��0�I!�Mmi�c�s ��q�Ιs�M
d � �b B!IP��+z9�@���>Ļz���r�-AD a��A  �-��w���Il��2��d�"1� 24(1��B��  ��(H��� H(A� nڢ�S*���+Z
�
@| �`�y�7�)!1�1Gx��dL�X���۠GCR��%Oq�{,Q'�A�a�zXp��L�(0F���
��@�_cs�A @ 
@��!  ���� D�P" *!@)N����OCI.Q� �}��@d�-�L�X�/�௠�A���@`$�d���AL�?�U"���	Ahhp�L�B"�p9�������,�u1 �X�I�@��<E��.sfB�u0)��c	΄��]JX����@1�p�0�T��f��y����m�(�`�h�֏� �*P���P2w�s�W�-�1B�}�F��`4�2�e$_���$�� ���q��a�hq�C����a�o��uۭ��QЙ���&Adx"5������V��1QC�{&����S��.��i��K�tv�F!͏��}yo�p(����@ � Dd�#�e�@ ED�%Op���-['1:}z���m��z���up��"iu0���=�*����H�!6��,�����a5�� 8A!!(�(�� �!�P��  ,������]�&���\��b� Nr��b�+��,�P������N-��;�#"�!��g8e�������~�e" 2�� G ��b���*!CS�0S�b�h�3$B �� �e��8�H$��E�R "V+�'d<$��3�.s|�;�+!�(#�R������B
�͘�L�����&͑hJu�� 
8���4Ϭ�Q�&����KOT,TfK\#��e&i��8��p��ύ<��H ���!�!_��q��tX�;b�<�
A���6`<j/��A\Cp�ΰI�`�;���9 �pm�!��"}!��:ln�U��0�u�&K��i���! @�X�2�&7�8���WTG�0��� ���1h ��[�B(
���A��ԦK���]\d�-~�=�`�M*bgq"�'$ �p���1G	�s8Q��!�Ab���w��g����P`�PT$B�2�0  �	=0s@,��g���c(>3��H��D dBB2, �~� H�0R8f�R䌯��J�|ȄyNQ��P	�QI0IC C�eD�� `�z� ��e���/�u�4,Z`��c_\���'C�4�H��6�$8��]��K��(O�� @��O��ܠ�Bd�6��D�Cb�A��!M�m6�r�� Cx� ��@a��nn�� ���\$�+��No���<�B@��}։P��@` T��M	rl��Hc�G�!F頒���(�  @X�=�� !� {�x�\G��r���7�ʋ\�b@AŨ+C b
c���,"c��<���6�,s
$�G%$C���Ul���@B88B� i*+�0����A��X��	�2$ ���#� ��#��5�@(m0�(����  :�8�gH�}^�y���� H�80Fh����%�7&��H����6��F��DFD@E���� �)!q��2��r�܌G!@I�  A �8��%b�vT*���C��Th�M�5J̰N ����-0B�,Ib�� ?
 B<����'�Q��~������->�;䩡��H��PG# ��{ؤX � m��A���`��G�3�M���j�	b�6� @+�� Ey5-[��1�y�+"��@0DR, "��%�C�	�F��hM1T~���x�����ё�_`    �!T| �����C��G,��%aLc̈&!D�
Ô��`��BP� ����3,�#��)P��.*)!.6í"Ѡd0���\�WB!@��3�e�ᅨ�bN��21n(��/	j(���)��A�/�8��p��pj
�x	&ax��`,�1SS����g1�]&0�# ���� W���n�E�F� ɐ!�(:  �$C�7��& ޥ^ē"-&��r�}�σ1��xP8d�@�ap�ѩ�U�d���$A@N��3�)` B�@	�!� ({��� O�!Hx�l2���29/�&%�BG�fB@!�A s�3�\��
bDʄ6��N�M�e���4e��ME � �`���F�PE!�E̍Z?zl��!��0|DBb4�X�(�"�KH
F��C�i�qȈ��t����?�y>�9GdI��  �c� A��jM`,�B �g�5f�{�q�grj�'�3�A�&� װȐb�u,���F��.�(�)C %C�8 Q����;5�e��h�QIQAc�eR�pTL%n#�p 	�`mS �,C��Hn��d���Џ�;���Uv���3�a�Rń(Hb$��%���3��5*�8@ Ơ�����!�c� fB\ sG�1w`p0���%cA�5��m�<��|$�D#dJ�����HH` �@ Y
%B��p��� ��d���G"��@&T#`r
�c���H�H2�E��-&���SE���G���P��#�!��a�� �yN(���<�أ�dJL@EiH@C"�   �u��a�$2�1{��;�k�Gb;g���ĿQ�CXf,�%�a�0�#$��'�@p���) �0 � t��\�|�
.��I@�3t�֑,!9A��4 �� 
 !�a<!�g-��r��F1����'�7ӳ�U���p2!B@�ا�M�u9�s�2��1& �@� 0@,����P `� w��N�@đ*�l"k��ױ����\D�a�uf8��r�uFX ���L@(��� �1E>Ő����h�SCc`0�a `&�q@hfJ��66{x0.2���	.~r�D� ����>�y�P�ᐈ��9��A��_"b�,{� q�����t)hP�
9 >�N��&��(�2:�w���m��5.N�'� ;�f�A�9�'1�a���02@ �2Z2@���¬���5���׸L�m4v�� 
�IμmgGI1�� ����� 1���<z� �gg� v>Jx�`�/�5<��Գ�Kl���! $�W�s�J�Lr�ǘ  C @(0$*� 4DZ�9U���(
A�J�*$�  GAFM��fF��yw�����7y�,g$�ɓ@ X <i�����q�b)���ψ>�8B���=��s�W 	�2>�,�\c�>�P$"�P(%>O��E�k�DEΔ'L��0�� htd���pX�C*Y@"�=
dX��k$0LL ��M`e�1�Ih3����QH  ��e�N�t�������*2�9�^}Rg���o0����<B�D"� 	�����rJSyd�\�lP����I.q���x�yB$��  
Ep� �X B� �  �� �RS	��33��8O�e�&¢K�NL`��.�x��	v  �� C�`�� ! �^�1�� ��(�1�Ȋ��AI0BI$�!B�QH��z��̈����B�� �
&;��P��h�b� H���Q0Pi!QB�F�;�^�[/��]1A��FhP�A@ Ef��cF��b��`��as�Y�� b[(:<"d*�3�.�|� 	�w��S�h��1eS)� ,95Ag���~�!�}(G���jͿ�n9�ڑ�&=�,p�Q] ɭ���'����$���A�g�I�b���Zš�_�3�(�����	~�=t(`J�UZؔ���! �j�B0 W�'����P �w����d|?an��m�B����Ex�PJ����1ψ�	��F��Nat�P�A���o�P���^K ���kt�Ht���"2BfB�!6S���q�@DF&e�U0�rB!%��Y\���p�P�ķ�y�# )29xb��$�� 9�23.�~P��.��s��&s���w��J��l$S��T���46}����戱�;�0�8�!( ���@�[y�� !�; %d)� ��5�-g+�B�y���F�#����AD��/�nF��  0wʑ ��7�t]�HCx���=D� F Ƥ`bxd(�t�)aR%��4) Q8��,\"Rd �=�>'l#���M��)��!r��MB��O�E C��\�
B���M\�c!r&U��3�˘��:1�1��8d���8��"�:?$�G�ǕM�LЃrƂ���`�a�a�s}�#���N���Ч�N6��R��7 ��&2�Ӈ8f^�Ej|�#`( � ��w�'�M�5H�aM�`(���\�O��!��a�š8��4�9���B!�B(�
H�)>�d�i�)rȇt�0<\.0f�BD�S��5���B� �L	�9��."s�b����e8�I����"��F�!G�(�ť������PpX�$��=��q�	2�1�����s�2O��	K�H��$0h.`a  ��  �� ���bv	�T��1��;t%�c� "(@���Q� �!�?M���} 	ᦖ#���
  @SH� ��  4��y?N������A�<��\aA� ��kI�^p�,�	�U�.���� �04"eR:�0�I��"ŀr��
&�(�LRB"�(��u�)�OHD�
*1#0!>22 R��$trJ�1�]d(�"�j(�t�i�r�1:2���e� A(�2�	_������!�M��u'�͸n4�������L`�WbZPfA� ( � �& A�`0 �S����(�� >  ��zL�'$P�+@  ʔ����X��Ȑ� })R�%`$�"��F`EPF����|� @ wvY\Dx ;Lx��"zw2�0���c��1�� ab��1��X��0H` $ ��
�� Ca RZ$t�a`T*�(��P����1§GDJE� �
%$N�����f�<.����/2`�����L��(�P(F|�� "9�f���u�vY�q���˝�ٗ$�E���p��B  Ӥ�7���]��sP,$ ��z�/] I  tpJ� b�y�� _&|��B}�G�Ee�_�v'��BP ��q:�1I�q�6*_@�'�K �0A&��QA#d��I���15*�4"x 6�X��
<�>	&c�؄'%%�'"�'�P`�S"2P(�.Z��$�s�Xf�>�0�1��T���F�:�?��21<�� �0*�L�R����1$�[���Nd�$ش%48�v�����-e�H$��:�d�Y��)�5�ɭvy�w���f�,ø�g��_�8y( ���?��`  @v�CSo/A�ڄ�E�Y7E���!L�h>�($��5
��{d�kv ��s��DI�pF�	?��E�<"�2ӝ,�b���HhSa��C�J�>�����g�
>�6��12KlҖ;`�qDBJ�����$L�`Lщ��sB����L��%-#�}\t�*G@���ܦ��-�F��̣�K�:}J`X�p�j����i1��ͬ �u}r�����&]�3��v�m��Vށ�9-F� x�P @"C�J��l��a���P�'�dȠ�aV|�@
�d�d��ȩq/���d�<i��,؟���	� 8�� '�@!Ƒ$�  �G4�@`��=��CE%B*F�����:�#�̋z��y��qR����<�hm�P/��T��� �C�p@�` �f�+3Ae ���� (�`FP�B�b�f����59�F$�@�����"Oc�MJ�5<��ۘ ��F�c�,�c�)W��c�"��2<�,2b�7�I�==(Y*dyIo�v;Ϙ�2�LcհB��9���E��C1p������at��1/��,�''��IH������sJ�8�q�O��]J(la���p ]#;��S��3�\������z噤�.66��O���M̒��  	�#H0R �LNvP=D�f�s�M�c���� �>�;�w�jL�C��a����a0�f���UF�Q� ��d�$

�=� ׊x�Q3$����\�$-��A~-�t�^Ι���# y���b���q_�=) ��Aܔ" ���^ �l�1`��X��Q�Wz��[�iA0���It�5���wI���5�xH��F���C��1 @	�a� ��	��h�e�IW�z,���� D$P\T*�$�0trc��N�u\u��L�����a�p�f�S�$WL��nAA��������e�U"t� �U<RD8 ��	�HԜaB�\���; 0�T��`2��.78���)`b��
%�  ���@��1��-�<��˱#���� d *��O5�C@|&�R-�0?�<���e$:@@���%�b��� �� "��S~C�!׎   H���  � ���S8��� 6r|�).���<��p�{���d�!  !0�=@P � B�y q�E2� @!����a!��G������2�ãcr����á2��eJ�$@ @
F���A(����
��X��y�<)�� �@���� �#��P@p����	�I�!Pt����P�q�`E��:}&�84�a�������2<! ���!�x�8���yTש1�)�)�٣��6p�,P��*)0 A 6 '�&f����]c�J0ԏ+	`�+��@�W  �[TT���q��2��$��J�E�D�@�F
���<{��}��  EA<�� @ owAr�܊���Ԉ�0)�w3�G�|A#��!<06	���$�ỼH��s7:]�2�,   e�hn�@�1o�KBY�VT��Fhd:"X[ӇY;Z��/s�5J0(����g�
C 
9iC����c ��F� ��H���pN�R*!Q	PQ�	�����H@D��  %��Lq� x�� G��LP�I�q��%}?<Y��}�� L�g�:;l��?�mt�p�!� ��a�GK ���]�@��i�6Xc����Bc�(�H�F� ����_�%���6�	^A��I-yw���S @#"�� x1��<�����8�k�Π�&6��>1
\��I�%(��w���,O�X�"��> �<z�_� 	 �[�0L�mr�X$�N����&m��85|�s�5�b�,5
���]V�}�Py?�! ����U�Dܡ���:L���1X㚏����$o�/O���c@	LLL���@�9>�M�y
�`�$� .�����2G�} MV������ �� 
B�#� @�
QA! ��^�IQ p �,B"f�40:)1��P5Z�,y���G��
OB `ԏ�p%vH  �� �`�O�N2����*[�_�s�$� �, �AA DD���$�gN1�"�g��fRJ�QO��n��+Ѕ���F\�<�U�8{;�%G)�K��1iࠂ6����H�-~�m�U�|�zO�}U�ZW�A� �+a�� �09͟��q�&#��*40��b�4�\��:3<�-���8� ��s���e���:�(=��a����wJ�f�c�a��� �̣���'#�M��z����#@H�IPA@T��Px8(�>�R�	�� �D�� ⒐b�B�P`
�}Br�L@9�bA@G�g��uC8θ�Ȕ3N@�����,Z�qX��Bz4X�}$D���0�˔`�_O� �.���<�6C�G�u�ᤰ� �,�J���  t�x���Q�0Rϐ������vG{D9��MM�x�r��-��qLOF���apQ@00����@م3�B�
�o��4��/0�  �18`�k���� (!M��%�g�<�,Y����S`�q:x	B���)$K�S?��A`$��`  �w EP{5:eU�U��-A G�rP��ԋ�僼�)O�ͧ�*>�!]VipD�11sx����DD� B
D��3��C K�縋���\D �De���� #A@�e�.# �!�A�
������g�F����Հs2e�����)��|�A�GL��� �Cc�6��DbB�L�ɸv<S>�G8	��� }� �`�E��R��p�]<@���O���B�61��g�7�#|7�,اj� -�����������8��:�d�c�� ����%��G��N�
&�b��I��o�>d��w������ܤ�{�a��a�-.qE
\c��)��3��\�g�-2�phC��<���U��:
 {�3�@ b�Q
q5c�B�ү���{�9��S��,x'��a�e�! G��#��p(��hL�PD!�
�c��1׹�< ����2�B&�'�!  ��i�C#O�)���P���� �� b4 ;sP��4�d�@X^��,S���L�2��Ɣ-l(<�A��8�0c"�t��T� 0k/"��؃�O0�$�aĀ%�:�dH��;L0@�yZ0.�o�0 h�O��&}�0D��$,����O��{�*_���� �W���8@���3t<Gɽd��q���g�k"��r��)��:iJԐK3*}0}t����y�ɗ����ˀ�� � � bF�N�A `B4b(�AB���9���A�����o�_x����O�UBT���A�6�g�_�?�'|����qP�( B�HX	�"X������ D�
�����0@ �8���� �?Ž|+��cA��|�>/A��`H�mL|$Db48B0 	��)b��2�.;��!6e��2GH�L�<&[pd�`��e :-,D�8A�2�G!C��!e�	�Σ`9�ј����0��g9�.E.q��S%"�e���KL@����p, -((�y��3̍I5 T|���c�8�Uk�M�$���0�6�hr�:T�#	��2�C'GFC ����0�@������`���e~�/	$<��'� P"aZr����9�'r���"��.���MbD�QH���GF
LL�tB� �0
*!ݝ_��u��'�|y� ! D@�nM�`(  0
Xb�U���or�_�4)v�� �$"aa��6�)��F'�����2�@a*�����8 ��!L��Ș.%��"P�X��L�!�ӱ�@ ��3��-6�	 q���]��S~�� 0<CrD�$D tbÃQ�I��� �)p)o�,���i��P<J�Hʐ
sT��X�����	q)���"�I�cIQ��0j.>DA=d�$H�|�hˣ���%�:�L�x�k$���I�0�� 0���>� `*1��+<�X���@!2@�E��G05}F6y�Q0�6��(�S�b�>%V��Y��4I��(�D�DZ� � ���������4Y BI�e�҄(��t�  :�<u����s��!_�Gl��M�`: �;Čp�uj�)�h0~xF"�b B� ����~3����� l��ѹ`��!�xd�$�ɭ�
C��Ą$vy�2�4��� �PhbQ���56�Ƣ�6� A�� M��Čs����"��6���8r��HDr��6�E��]ލ��<�Ɉ(+�R!@S���1��?��=�Q���	���,l:M�L�����)
.!���]L:>9|�	5��Ĝ>p9����" �0R <�<C :>6mNC��M���C$A����G�|�p�8�L�� � &!�XY��O��<1]84 �	"���"ŐS�1嬀�e����:?�  �p�9�ls�1�JX�F��&�Ӥ�(3F����30
�>	B�@ ��t��I�d���v��O`  	�G !�ƣs>�`o��<B˃�4�\��ye�J�y<LL6� Tl!7M�T4z0�"��n|'���痲Ҩ��rC�!!� �  	 ! �G����Ev0�a�7Y�	N��4��6��IL���a �,lt�&}lr�q�Թ��d�w�C��g���aH@��Bq�� �x����,�Ȱ(�@(  B�� e�gx��q?%��"ϳ��!}��`�"3�P��B�!6rP�*!#&x� "&c\J�(�0`���>�8��!�	�` !�C�(��\�p		` |DR�P0*< m8� <T <� 4Bd "B��G�>�\0��}|���C�aPb<>9JM�P��;����U._u�-I �Qs�p���[��8����I
d)��uҸ$�,cb�.'����&"��
B�0Ġ��K�A *
�L18��o���}�&#ɘ#@�`J�� |��`����s�Y�q�!C��%�9�KDN�
)81�E^�A�ȳ�*1	t:H0
� �P011�Χ�8�����2~3�`\XX)�b�8�sJ���b�����ux �K���y�!6�3@
I@���D��q�
g�aa�!�/1���$�|�3��g���!L�����l�4^q��1(%�a�[)ag��I�y+�Oˀg�8f��Vw�e�C
4x�O�͔C��� �DP �9b���Yd<�0*d��`0&K�C B @)R�L�A��c����0 %A��F��`H�!�L
%��$A[�G�S�C�*"=<"��)1&2���bJM�f���?
P���kO� p�u�Ô3��BED��L�tQ��B�63�x�4����D�6�* � a�H$��\rBE�i3E	��M57����y	�6�����` ���|��I�\���eB��A�F�ce��̒d� �,.!��>) �'&	A ��i�h�m~�_Ə�p&� ! �x2�$ ����!����8!Y���'�`
�dI��\�' � �*
`(u���Q����%�G����|�P0Eq�(;�ǳY�P��p'��"'�o �`��;:���y����'�Sq�m:�Y�6�0D�%Yd o��#��e�RTR"B:���
#R �1#<�A�@�x`*��������)|�c��u"88��)�#U��E@��e:D�ÇP"%A�#��ApؔI�C$�c<F��(��,�	��<5�D��cB��	��=�ګ� ����X��(��L�,`�p�E��U���L�*��rI�X�`0�#�H�D�D� p�:r58��Ҡ,#�	X�N�v�����a� #(�rȋ|��\�p�����.�Mf�H�[��E�=ӣ�F� �C�K��<B��.�@08�#Bɾ�#'���?ͯ�����yEP@$���a s�����y2d�ǀAQ�E���:�y�&�)�`�E��! 0&��`Ĩ�Ѱ��>�}D�N�!��1_�X�¡4l���1����c|�G�>�����ML1 "���1ܦc�E��4s����Y<w�'�s�׹�-�c�!/pL�1**9DD1�  G��E	��p��s
eD��%�O``0� eB�ˈ|4,&�X�c��QE"����D�	Mb�ЂB� ���X�p�M��!!�
"�%A���H�1�*���R0�!+��u��g2?�y��c��H��A�d�S�`�,��d\� ],�n#�.�xx$(� �u�8@�w��4o��vI�� Z(�@m�Q��DO�E�mJ�DԶ��,X�8�7��J��e����Aˣ\`@˗ٽ}�\�&7�`�5r���ӌ�Q�8� /��	N����(}(il<B 
�"��(hp"��=�DT��Ư���S ��$I �%0�M���
�1O�KD�ȓ �,s����[��j���wt,b��r�;���p8�]�QM�.{�G�&K�����;6�Df�7Ɵ���{���}8ڬsf��A�r��o`���<-�������12��;8���vv�0�p��9oBx��\��.
��Ssʗ�g�&���х HI���pp04=�>) ��}�@�`B�$P  
#�>����dX��%>�]�Ad�3d�H�		"����F�
5=�h 	��3�pfJ��
��I�)�8$ �(*�)�6-�d�8}��,}���%���Y  �  l���(���c0����9 �A�s�'l₰��AY`�WxĔJL�����,�>�2	!L�;{��8,�H�dƌ-
�\�/�5����/���<�OR׀$uMB�JL�� �א�c�ߢƧNJ��Py�*y���)"-8��]N�x�<_��(�S�`@���1,	� �����B7i�ە�&J::�X��S�+MsL6Q#dd PC8"K��Ƅ�����e��\�@�g���C�6f�B�u���<�i���x�Os&��@4�{�֞y�1���(?ѹ�1����\���/��~6��x���M��tش��"67&?m��\�c��7���@.�#[L�Nl �赝��MNY�@m;kP9��f�\4.�& �Y�嘺.�-���&>��qxs�Qh0�2� � �DBC��m��p��q[`J�>)�R� �h��T��I�S��<;\g����k��o���M�Q����G�{j�v�ڷ�"�`���*gP{���b;n�i��hSNj������3�yh㙩i�<1��y�M��&5�H&�1��"$jMQt_w�`Fٞ�e:N/�s�)�P�>'\���N����=�����C�?��s��_f�� �9�*� �N��6��> �G�"`�Ĥ0�K�A	("����$��Qs��r�����	��܌��ń����} �#�ר��S&�`ѣ�.e�p�,/�([�h��	�Y��e@D1 @X�!�#���!���tX:����'��u@G����F`�0�U���N>�����'�����۱���ݩ�q�Q.�񎾓X&�	af(]����(�&����?�2P�c��5�A6�U�6
�a�_�Ȑ��"4T��{�_{�c|�5��qc򣖟_�y��,I�U�b�p���8F�&(X�p�-L�vf[�B�-�n1��D�A��4(����|Lq�m*�}�#�B�����	
@����LBD�- e" Cf1	H�	�SdH�2>9&Dxh�`�8�4�߲��y�ZE|�(�Y��Հ}D~� z�k��첟��H�O��61 ��3�Y��Dh�cL`���}�W~��En��9"C�}j����Y [@��p�1�2*��Y��2���9l����� ��HHA  � A��!"�ABHD�Pb�P��
��G��p��v��x�2h�l�0�MT4fpip�����A8�BJ�%n`�9fBK���`J�c��Q"��J	��r5#�KG�Ї,�,���5����d,�&xJZ*F$%u�p��/�$I��`CA�aT����CA!��'b��Lp�u�Dth�g��,�1}|�Tx���ß�5��͂���2�>��
¥K�����].1M�):<�gy����y��Ckj�>��R��?`��X Jt����3� �E$��lQ��"��ur��L��)��C��'%@�!���ca`!Ð�a�2%B��%�����tP��`aC(����%r��A��D��-�71حJ��3z�;�� 8�H� s��p��� ���W��!����
��i����a$� �-~�O���N�;� ����C�&�P��!UR���� �Y�6�$K�˄,<#x"  �@�� ""(PLGCNa�������xo�\4yB'@"��Cf��1�1�26y6����=�t�,����1�r�'�B�8HD"9L@0X���2��DKe?��N��|+��݀���0��5���D�4�<��@�9&`0V��#��c2�!��(������ ��a�p�XP��A$H!��K�Gya��An'�KE�Qd����� '��^�/�!~���<��q'd�Q��ɴ�o��.oqH�*6����#`�=�q��0F@f��m
p��#����9� ,
9x�� d(c$! J�� %�A�¡�"#��Qc�S  i��O�O�-�y�?�L�����Ѥ<c��w��=Lpp@4
�
HY�D��gJ����D��<<��x�!Rc�!��� <��e�x@��X(�Ф�,.�g������s���K�����f�2#���r��ȱGH�}DxRb
��@  ( ( DK�"o-��-Kƕخ��u��n�::Z�&�|�
+����N�Y\���H�=4�	a�1% �٢�91�H���>��,���U���8A��x�%#gFAN�"�Ȱ�)ə�@Lf��N~�oc�`j��m���gY���8���G ��I�C�4!D2�,���  1@��IHA���΃M묾H$Ct��)zg�ք�$��-i�w$1�G���r�*�q�m��(s�_�����uh+ٗ�u��R�Gi� pN��X�O�>1Ud��m�Y�E%�%�� ����.H]}��0R <�b� �Q%%!��� .B���<��:x�)[�ೣ..���E�z������bQ�gd_x�}��7&EA����G�ˇ���G�9yjL$ ͂h(Q
�h �%��Y�,��� ��]z��DD�CrpH�H9G%��Yc	�=�Q�1OX����I�0 ��I�B@B�LW�f5O���,nSp��s�8cB�*&21*c�Јa,s�U
��p�2M2sN��1�ءbF�>�����1<@��(��0��!c��!4t��1�fn�,8��?��RP���f���w�Y�PPq�a��E&f��	AgJ�u8�a�3�m� �!M	�`�Qp����E��a*�1�l��Y��	�a &*��$)^b�9��S�����k%��͵2y9��~�'�OQcB�`�)*UO�y�O�D��!�&y�X�@��t�N�&��B�!�H�x�P|t1&���2E�C��X(�hD�h�(�H	�H�q�P�W�v����ѓ��
�kվ�����/�x1�=jT�!�@�	� B@�$�}X��p	�� PX"O�
J*�&@�1��<�V�E`���cR�X�r�)%J,�m�������N�NX���" �C�@0 F�#Ax��b`�� �D�e����9b�C�c������O�=:�(��0�1Cf�ɣ��Ca
&b���:}�c��(��c��HBaPRq0�SC@�D��!��%ghx-(`j�����M��Bw�|�+X���Ӂ��uF���I���d�<�X$iRb�Mq�������O�G���X��ul��F�D�to�����|��r�>� #���䬂�G�c�����o���}����.�g!����C�0ƈL��C�]B�e��)S"�\d�K��QB��(
2�)��>�"���Q��$`4Tb ! %�'BA`s�E�U��S�} U�$��i��ڨ�`�Ld����N��������f��*	��N� ���gL��4�� LtTr�xdTtбYB�S��H�"#R#�q���QY`�ńm""|n�e�s �5&X<�āq�wI��2�*�g��i�F�)2#bD ��@ e����;4#��>Oc�3<��)*������}lx��Ra��U�AXT�p��I�$1@z��p���GG�FP��c`*G""L!�H5�܆8MC��x@�ɹ�+����8}zHأ� �(�5|>�mTY�D�"i�F!b�}��oB#(� �ND�>!3`��y�
t ��9w��1�	J��bKjBUC!a������a�A��C����,���}�5����<L�:�9C�c����)q�&:������GXe��PDG`J��K�N��
)��6�1qI�P Xxp$H���(������H�� Fp0��'��g��`oCt�Y䂊��.��	�3�9�N�,� 1/�s��£R�@$�� ����K�9]��9Jbb��'"��@�sH�"*LP���

e %ڔ��HDHt�*;h0����e���d�@���:�C�����1$DDb�	"�P�$*zR��3K��`�K��^6x���4�%�U<j|��8,c��i��'"`�)	g��� �5cS���0�G�o䘖3L��@ɩX D��]NH"��(�!�	"�>L�r":X��a�M�	v�a���=��e�U,T�pa�5p�3���Tbz�	q@�X�
 ��!. ]�t���k�gL: ��H�^�c�<�8��4����H��F�<:Kَ�U�:��z(99��y^~F*~����>�!�l�D� qF�K�p�M�&�S.!2��!�0�`�= +�9��2&���bp��8d�C�1FGǁ�RD f���"6	9b<L��i�A'È�AB
F�'��}4F�P���aD�w��[j4�$�;�g��l$L�"snF~��{�0 �s��D��9:k�,����� e�Y��'�� &E �
�d$&�x�D�@���)q��1&`��U 6&
�1)��5��y�ʿ��:"���}�\$�M��a�`y��τʲD
A�8r"�r��O��� `����$����C���/��XP�� 4y�l/�Ed�,+0����}^ǜ�9�a�!�D�) ,�"(�	FQ�$"���Cq$�ɂJ��!��d<CM��!=\v�(sU΀�

4�N�$50mt��m^�9w�g�#��e���� 3�����%B(:O��or����A� ��v|�Ƹ����Ť����ş��M��8F�a��l�Ra�"#8�d�D�6)�h�c�f��**#����#O��2�#xD81	@&&�2���ȓ'��F��
��D��")9�Pb�'s���X@���FR�[��$,�U�i�
I���#ָ!b��#zR�>��q�	�G��H�I!~LJCt� �%j�Gi`rL\"(
@#�B�uڌɠCX�O���d��3��Ǆg�=�h�01��
+T�X@����$`h�(�4(J�O������`EPZ���`��ET*`>M��x�\�B�p3B��2'Pjl��A�X,�D�)I��P���������` EHD�c1L��8�%��P ��2�$����1����Fe��� שR���� `�$�8P��")�:�p^��N�Q��QI� 9��I0� J�c��$?��ȟd��0Sw��]���e����T�_g���H�	d�8l\098l
��2�⒇p� ��aH0(�Ȁ҂��>M���Pt��t��0L>�	1����	�,!�p�0b8�0L�<�4Pi����Us"�uu�U+7)&3�,�f���.F)D�=t�G KȔs$��23��a��h�$8T50d�(! 2dB<�!��8xP��y��<��2����iQ��b�9�a�.#4f���0h��	�B
F %����Ɉ���pT$2"���a'�h	"�� �鳃�I�{<"��u$
���8���J�1�H\��{�>f��X�g�+�1�O�6�:-	�I�`X��5�0c�ґcB1D��<�)�Td����>M2d��S� [x�	إ���q>D��#���P&�`D�CD���*b	@8�Q<�X �s7��x�s����3���EC �� 0�
�'�&�$\424�R��������	Ç� 8��.�5��6
yTdcNI`�T���q��N��6:* #���HB���@�1��FB�`��bS @� �@�Ga� 
�E��O$��Ϡ����{�S�lTہV-I�$�6�Y�͐Q��|0KKe@��`����� ��M�08x80��"L�2&�XB D"B�� R0�Sc�3G��=���C� �G�<�Ӄ#����@�<�tP��@1))% @D��%����(
 ��4( S�Y��I 4��7�9fD��E|�Px�*'��Ŧb	� ���Ml�{�0���6BI,������$��H@��GcHD�!c�wc��([d��2@�KDDFL�.#t��aNR�w�Wg�1�R�@a��k�	��E|Z���F��dy�"�4�d���~��"o��B�ی��I������gP�6�E�ұh�#M�A�Fp�+la�����C�ǢED��ϔ�Ĩ�hD8�Yb�9JxLa@ !9�8D@pB0����@��@$"# ��1@����] Ez8 Q0z�L1E6���dFD�甂;7XP����N?B 	�A�YJ��D�����(66!&h�����10 @H @R ���3fXd�UV9��C<��Q���d�3���,'���.�`D���46�8��ac@q���@B G�%�00��a���i0�aq,�t$�Cb��� ,a��=f�A�}(�J�SD�`T�#��
ۼ���6�)�s�2f�P��B�C���hhQL��� 
0&8
���="�p�ϔ�́Ic��1�>��K�� �9F p��;l�G���>r�4�F�A�s��s��>��+%�L�:��G������S{ޕ��<oU.)Ѐ�0)n�^\V���3�i2pB2��A��A�4(�e��>������A`@
f�D�2!C,>�k��E$��. J�
#�& � �1���X1:	:>#rH��%G����H�@�f�r�c+	�dr�X�*�)F
b�ե�  �B�� .Q�ǡŀ+��6�� P��0FR	C��  ��H@`��y44T�rD������6��8�q��s�j@ *Cb6p��"3�E�F�'&�'&��td(�!��,��3'D#$���a���Q�` �pNH	�+�I8�P�N�y$��,>�  �|������\��ǀ#f q�0k�e��(A��J"D���8:�b�O�ݿ���#�N��a�	�O�UB���!� $��R�|3�N���uI�9�ƫ��!Fe�a��?��&�5TN��y���&��`򳾂���>�D��B��3������ m\�����M��$30���*>����xL�ED��@,�����!�L�W(qǘ!70��'��O̐>�PT�p�XJ�  "�#�@PQ�J�*)*>) � 1P��E�!u"��'�,�YP�T���ٺe��J�c�5"$�'��� ��4x�.c���**2<"�����tJ��\���3�ZV��0bx$d�I�&˔L�\�>7���s�c�>O�	��F�s��05F�\�v��� �!,�!� h��"�$�s"�>--�D:�ʒ	s�Š����2bB�y�(L�59t$*]2��8<�6<���%���,����,�Ps����  P�@N�������GE$��-�D��$�~s��rϬ�,A�f�:M^���������@Y+����O�k�E�w���B�e֠Ơ�Ӹ�q٦� \����R���>�f��$\����[k�6hJ��~{IQX��J���� C�]�ɲ��<�:�S*p�S�M�A�8��%`��c()�X��$ ��1˔3ӡ� 	+���� �j�
#��Ad�@@��������4�4���c!�p�Ebb�zԕe�,K���lUT��~ͯr�d7��zt�.En�]�1�}4J��>]LƼ�	W�9E��t�# !&z�_���b@��՜ǐ�$��v-6�HZ�.S��ց�O1��-��̾��r@�<"G�)&CVP�c�)�L&/�/��٤�{tx��>��p�������N"��#0&B��u����dd\�e� �:,@`_eL��r��>��仴�G$�G�5���fƔiQg����9`0esbB3˙9�g��O��8�-~�P�ѰE�Qj@Έ�Yc�㐀'���Pj��EQ<td4$	�`1,�&�N}�<��-��޶�СB�V�>z{�ä� �@� dAS��'|B]��ڡ,1I�4�ХE�}%��:lR�o�����YZ�'�q�6��;2�J�$�緲G��XA�B���,���f���䩳��a�5� 3�uVx�9� t��e��L@$�r�#��3��\�I���o��H�2#d�@\%Txb�1�:q�0B`�N��IBk�K�SN�BQW�iR��:��De�����D\�l�dY���^;/�1suy��H��>�����IPi�B-U��U�/�E~'d"M��0�	DK�si� ��Q�nx#(�$�.鮹v�na�!���h��w��s�Fz�G�{�O�)�I�2l�� ���=Rf�g�b\x8x\�j�ʑ�����C �( `BHJ��Qr�Ӎc�L�sH�0|dZ3�lJ�C(�D� ��%���0<J�-������H,�0�b �!$Aa!c�R��0��@�`���E^Dm �4p �1�') ����8��K}�7X�i����"�AA�	(�l��N&[�se���p;��7ɧ�LZ/�H �$�"� MT<B�ذ�����`j�d�2����y
 e� �<�0x���rN�<�`^%�=8	�ȀL���� ���  ��� x04�4Y�! @H5�L1���TH P2H��ɳ,�U�M�Vd�;De$	��D�ވԐ`� j8�.	#$!�l�3O�cBDB�	B�I@s���С�b�IM#�0&"b=_ZY��9�K�'X� ��y2�(����G�,1.<�`* ��2��Fa�*C8R !> �1gt$ EQ��H(�Ð�P��[�3C�YF��tȳ��X�G��O��M4:�L8��k� t�Y��`Xp����`i)�i� �0�a��aIDr: �L���O�8d�v�Vk��B�����$�`'B��/@2�n}���	�(p��O��z��N���� H�ȓ��Š��T@`8,R�q�A�HL8  0����P:D�L2�"���H�s����=�Ƥ��,2 J�{�lr������0�A�D�.!5\
b�J��@���@"8D��@�G���B%!���.Ep�3{���Y���H )��A1KF>	
 %$ �j�8a�%d0o2��`()a�a�AHX@C0���E�P��a�*����@h�q�" �H�>Ezc�tV8�?�SBx(Nј"��H�р��8P	���� �`E`��!}NXӧ���8�q�.UR ��Cc�Wp0y��"U4z�|O��sǐ�8C�NrLEN$ (LE���aA5	�P2���'GB , �Y�v���L�2&]:�� �&9 @	ń�}�=,̪K�T���\�*+0b$�pX�c1�.+��E������!u&����,��#G�� n���R �p^4�O��IhQ#F��J��CH�a�p̀Kh𨜀�  B��S��A��w����� `G
��!��I@`(J
 Ad��
&��1H�HD�� �@����Q|��+C�@	 0p,!{`��/��C@D� B�A���#qN�3�樲N	4�/�H@lݛf�-zX���U@�k���G�E��"�O�B��<Fg�=�E� �^c�5Fp8r�1c 5|0�		2�@  �X,"ґp  � ����`�T(����vx��L�0������I�2K���b��u�`�E���a�8V欹�3ܦǈ	��9[�&R"b�i! �TJ��t �GG���$���(�oaĐ�}A���~
*.  �C�������x"��z�|�6������
��������;���4�4���E���n�v8!)����$�>6y% ���Icr�$����P� p ��QA<�FC&K�<>DFls�I�"T$84�x�Oa"p��� G
���Ñ@a )�]\T"2"FJ��C#�"�A�A^h�fB*G���jTa�q �L-&� ����y< w�]Lƻ����XAB��[�AmC�ȩhh�EAFC��D��@ JJ�B �cJ���d�U\T<T"dn0�]��q�O�9"�e69@D!�@p B� �EE1X�" B BQ��� �a�
�Sb���3�O��1�y�C�U,R�CL�cfqP�1�1D�N�O�fzDN3�*��u�iar9�W�Ơ(	!!=*ZƢ�D�D D4��?B�7iP{��9�AԀ    J� �C���#
c��;kɘ����a��	g�Gh��{\@#`�1T&$��wy�IV	y�}$�-� �D'�F��a����e�	J�(p�ULVఉ�S���1U���R 1�Y�D@R4)�cc�!C1P�P#�'&�����`@ �H�� FJ��I�xPf�PLR��`�x��((�3(��>83	S7ܤ�
G��5XDG=�@�ApDĨ��		 �ܢD� �)��EH
%"$&!�H��KWCF�Eƴ!v)��2@��# r��j�(i���)m��<@f�!��X�����������626�d��a�#A:l�0� ��0x,A EQ	�0	���� J͂���E�1�Ƃg�m�%��#�&K�yxZ�Q�[\f�;�c��(7XP��yL��^�T�(є��aG�P�h�0f8<F���cɟGا�fl��{�l9 V�2$j�� 0@����-� x�� ���a�}0�q��HSe�,VQQ`�8[ &�*6]6����$Et
��O�+Ĩ0r�HRĆA��
'�� !���!��"]4B�ܣH�sLR@&�J�.-ph"0���Ĕ	19�q@�"" �xDh�D��p@ <��&
1	��@	 ht 9 "
1�@No��i��Z����� ��N�(���BBB�?"�#%B����3�	+,1!��@���0��
�H�	5!�Ĉ�!�9#�A
B��e��
>%VIrB��c�	H�E�T��&�g�!"Sr��H����ð����b�x* ��a  E"%`�T�e�
E�L�Pe�GB�D	L�*{T#1��D�7r��ϲ��~��X95k(9�F����a �4��G�>���2��-BF��x�뼍���8�*D+5�"(�8�-▎{��z�/�<R�i�Xa	�:��g�W�)�`��<���%��I�XAc���c�5<Xd1	��p�   1&Y*��e� L���[P*tXE�3�	V���X���9���mn��BG�C�<y�Ĵ Sd
À���8 )�
��� D�ǡOLD����%`B�����	1LzG�N�d{��w\����cߺp��K�(BB�@���X$�F,�B�:G$쓃�#Nq! 5D�)5&tr���X
2�M!PV8����C�#˧�$�����&��H(��A��m>N�cJDX$��X�;px�I| ��"��D��D��0"�RrĘ�>��`a"��1'Q�Cq�i�			�\a���	�� P[�y�)bb "b0}ָ�&�GM��X^��:�1�����1�h�H0L"ѣ�%�XB�0�K���Ї�3'�q�mN�n��{s R�&^��"`���U��}�:q1h��AȲb��So��A�U���'�#��s�4��Ӡ�t@���e�yj$x Q��$�����-t�P��QQ ���6���Bg�>��c�7P���a	F�>9�,��l��1e	�	D�;,�ǧO���-8֨�E���!�cDD�@
��O�	�̄
�	����I�0�4��㒒% �Y�^y�ٺ0j0`ŗ��0I��_����Cxl|x$d����_�P�
	&�)�Q	H)�C ����Z��A�0�  �P$�Q�Ĭ�rXԨ�����3b���T�P� ����c�q�)%0���� ��GA$ ��E����ੱXE` �%���X,D�%0B���*%�8\�.:)}f� �p�fq�)3 B� `b95B�,=n���>rnR3�!����08 $K"A0��1d�`@��x���]���8D'z�/-������BF	@@��A"�����@�i�2y�ub$=<\TJ@��{Q����`t� ���|VqHR$A	  $ @�)5ry6�SA%���!
"&Z��@Щ����u2`�i��OH�)���i`���Y� �6>��*�"b�GdB� F���B�10H��@(<@bQ À>�*1���R
.31��E�X����!�#B�`�C��,;DTq����BH�� � B` ���aEP�0d�e�H`�� )S.b0���O�&U���U��q�9� 2š�{dɠ���!�pR���xe�X � 9�D�`A�0tt8J"G��!1�T�#�S�âL����C�1�<{��,��p�����9���8��� b1A@D"�8�
�x���%���8���x(	 4$��D��@ �W&��� Z����+x���:����a`@hC�qp(a���ױ�I�f�딘�F���("1�   �f G"�,b(3�X&e�<��	���h�a�SRTdx@�)3�9A�B����HX!d�U4BB|dR2�DPx �B�`<0E �` A	P�HH(PdLDL	P"�%�Fc�(�h2X�z�EI@� 
To&� �!BI �HG�Dcʐ	1��}~@�2	�P() b�5y=�1D�� B$Q
���ñ�){�Ȃ�l��F��1e�*1��	�(��,1&�J�=���t!�(   CI!FQ ��D��P,J�#�,L�IQ*Ա(Sa��|��1SR(��q�u6�&<�Ƙ��FS�`��A��W E ��P``@"�p�"#(a���3�C�7��s�
�@�[*1@�`���c�gy�>$ئ�A�%>��eʤi�邰!��$P������O�<w�˛�&�}tD� ��[61* pb|�a��ytR4LΈ ��x���rdX�a���\��1-��ha�å��R��QHHQ��$� RR����1&
�	�!<<��H�6
�� �@�F�$@^#��^��*&h���@�EFD����@ H��Y�����U>�	m��&� ��)@� �(CC0  ��P㐂 �̔!/qH@	H���x�,#��9c�622�����O�S>�=��@�DH�� DxRB2AQ��
K�B��F(Fa�H�b� �u* |��l��A@��@�h��!T���s�S��)y��q-�,Q�����BB!�%�P 9h� �aƃ\lp����?�����4�����H@ *��p�:�*}TR3 �GJLL�>>'b a]ip���1a���=o�`� "@����B"�  �` � �06@x 
T � &�)�H�R(	"���HXƢ�U:\���
��D�!��:{p䘡�1�䙒A�"@��B� � @�A�0!>�>&!#<T$Db""xr�>R�Vg�;��Gcj�h `T p 1	�?���ĸ���,{,�)��(� ���x Ð@�� @ @|��@��y�0s�	�ᙐ�#�A�)b2t d�%�f�Hp��a�7x��o�<�!#2�@"B$  ���bI��P"$,��H82,J"�
�5J�2�q��<Ox�-��@��S2(�ƀ2P�AX���#�x��X�p�	WY�1`Q�����PA &'Б E�D<D�!'�H$������!�1�O��~�I, @�C�c���B��%�p�&�	j��Ga�`�'�!�cӧ���G�i �==�l1��0�w���J��s�hhxx 0&1���A�	��������lQ���	:���p| G�2).S �<<RN�s��A��F�K�3����C��%L$b\80
�b�@�� z�8��bR2�H� �C@ $b|   �C�DąPW>��"�HN%j2�)p�@$�" �C��z�L�r�:ۼC�%6h�<��Ps��@8�B�!� O
ք�T���	��Cr�r���s��6yȸ��@�"cQ�"�b�QR�MO���� �#��0���R#����!"�Ai1�	�)������	2XD�@��pB��a�!�M�"�Q����0}n9s�	�� (����@@ �0J��A1��0���SB,ip�c�}��1>�O2�����( ~��p��8*1�
-�q|�d��(4�0J@N�m�x��8\��#	�r�<��c�=��X��@�s�Q�(I<$  ` 4�@ (*�'�`�::1E�9������AhP�P!f@	�׸�	�g�Ӣ �0�)�Rf�>�0%G�,N�"��I�@�@(
��� $�pH��0��<DRDRR  %��1.�k�V�E�0"I8"8����p`d(�m����8����è<������Mb�����H�3X,���A�'F �����c�,�0�CxiQf�	<2�\�6)�r��.>sD�0��.�os�'�O��]0(	U4<�����߶=j���tdxx���[%Q,O"� @�PÓeH�"=�p|f� �2����P�م#��Y�9�`��Դ�:�G����|::r P �/�X	�� �>���P���H���� QaB,�D��F�=�|�1� ���uͼ���5��LPg�c�<
r�H�1��b�҆��Bc�B��\�B7K��e8@�B����C�qmlc�C�O�4   $8(��
��>]<>�{�fA�JH�d0�Aa0��s����e��3����b�2��kH@�Q'%��OB�52ST8���C�g�C\2x$h�8PTL D
��C�À�AP,L?w��9٨��1��k��@��&�B!�$ �g�etdB.@q(��C��� �{���8sF�49Ӝŵ�]���р�{&��|�ys�Q>�uLL���2��.=�Bp�����!���&�s�����-��9j.�1��`ޯ�|��3ѓ����4Lȅ~�`� RH/%Ӹ#<�%a���	�chٺL�\"#̌�J
�D�v�b���(�2%��6֩���8��@c�*��$9g�lhs��3�In�,b� T���- C"��#P��Y�r[��Dr�, ��e�!�u��-9@Qe�l���&�.��g9=s>�?�%���P�D��Ly��h��ajr����BH�Ab�һ��ib���=�(�X4�@(�w�]rƞ��HJ �`B�p|T#˄Ĩ���>�VX��
�M��gy��:m.pB�|��
oRbH�9.��3���B`�yv9s�[!��g��u0`��*�)����i6��D2��:=����A�9cҗ��%���r�eIAŐ1����xf��c��G�8��P2��Z&�!��TX6�PSb1(3,����  ��U3!��&�s@�."9�8%���H@{�Zr<0U�������}A5c`a�̳E��1|��$�|I�D�,%��3�]�p�=�ȩ�u��|?�����[�̀��y��7ԟ�>�3��s���u��e�S�]�Zt�Np0a��n�!! �$� &*e�DT�a �G����*S�l`C��d�e��lI��!7�å`�-��G����I�c�Fi��b�����6
 @K���qn#Xrc�DFhI0%<�g������iv�	>�u:"-GE¢L� 9/�2�j����8H�,`�aAY#��Mf`�Dd��X%�lehޏ9���S���$&@@��6d����`�>	Pm��c��0Ƥ�	�P#��Y���!f�N�7q��S�|k��8F�]���,0��1v���DC�q����0 �C�d�D�ca 
A0��Q0@B��u2�r*n�����h`�(�Cƀ}�H��Z8�/X��f�y"�A E#C����� F�ǤL)
A�H�BXV�@%`��&:|t
����$����B�ahd�an�D�
{t|##�D���V�@UU������#�A�?TÒ�@AFCA7�b�> AP `BQBP���٥H�A8P�d8��$_�D��*.!:;pLlj8�����y/�&�S�2Hg�2�<.o��ءON� C���F ���D	F�d���$�������]Z�8q�τO���Q�C�ar��� Eѱ7
�8� kt٢
H=*1��D��G@`(���}	߃�=��d!pT8�#`0b�
=<$CĘ\A4.ydZD�Ts21:8"�������H	���@A�,��H�-�����.�s��y���}�p��t ��(����f	aQ ����%`��!tD����`� ����Lp8=��³�đhQL⣽57�HDABC �e��)��P`D�8|"-��D&g��>=  ��hr�e�9L�:�`2,0��d�Wr���.;THR�*{�<�%�Q�Q��-��$!(�c�^��{��=|����xN�G˙�#�tB(��E1K_���� (��b! ca@��tI�`��A�#f��<�q�J�*
i20�� LAHq�>d�W�M �%��*&ET��k�K�'P����H����(�H бI�0DZ�&` �GTlC4dp/L8��Q
P�� xr��hA��;���: ��D����Xl�6��恑�D�X	"�\ϵ}��C���#Q  ~ۯ�.B��H"<bn�$O��q	DH@D�#��( 3�H�;��`�3N`1���Kt�	v��=4�"e���ː6���$"�0f��$Js2 �(@ ���	D��0��#g�J�(��Q���#2!��ᨩ�1$���ap0JL@@&K��I�Y4����XL��  RR*1�P0	EH$��IH�.�1�`����`�����D��t�: iS��]��E68��x�9o�m ,VѰ: ������I�}>�;��J0��щ'ҫM�����d(
 xE�p�ؔ �h ��8M	�A��?e�
�t��q�FQg�2�v�>�g���,H�v� ���et�ě�@E��	5&��e8,CABB � ��!��Yr���pH�2&Ci�x2�D b�ѩ7�4�Vh����*�4��h�E�67H����f At��i�L��R���5 N�åH��`8P�N��i	)�0�`�>!��y�H�4��E��c�m��@b��Kb	�y��Ō�&^��(?��t�X�<�Yf�  �P Al�8����`��  e $��ˈ
 ��#�ĢT�X���D:�� � &&�� @0<F� �-J�n��s�,#x�����|��c�	� ��@�=t��2��UR��L�i:�)�	����;Lq�
dy�u���&Sj��u ,�(�3��jձ4��?i�ϋ��ʐ���`�ZG�%D�� �b`@D"@h�p�"��&=ʌ��%4��BҰg&=J�$*U|����d�:E^fo�k)�n¢D\
RW�$jm9ij��d��;o�q��v�(	�	!� 	���#PCGbAKG�h	��MD��CF��)*��e�!��a�����2Y�$��<-:yT�����5!#�|t��u�k���A%�	A���PQQQ ��06u(�١Ib*�pDQ��`��!��)S:̓��!6��IX�>Gpdh����f�V�n��ñ:�-����+�O�:D6p �af��#�i��D 0!�ұD�X,{x,KB�(�A(Q�؍^mb�(����0��Ɣ�cD�GF�†��@"�� ��B�S��$P ��	 ��q0 0���.�ҟ6%<\��H���"I��eUT�r�Ou� �JB�?����-�����O�p ���KT��7s������;]<|"�t	�a� d� (@)P@-�lх�g���.�d�� �nf�@ɐ��H1ʧ�%�5m����R @�*���,�^2&��{�6��S(]�l⸫I(��2%P!8@p0��C� �!2�:GN��������@���X��&��1M"�0�0] �B�񜰭�c����jk �-�.(�0N
��M ��2X]" �>9��LȲfib�A��b3�@�WQ�p��@�1Y�ɐg���91��E
��ݝd�鑘�������a��/�`!P�`"������#D�b�DF$��$@(--DN�!GՆG��0�K���8&�x@ XR(��#��q�EO#����2f�  ��H�����X@������`�&��>C|�4�Y��a�c��܎�X}?�� ������蠰Ǆ�Q��1�c 	�%a :A �>��3|� �1���%�X��@0K�X�=j���C�:���i�g }��P���0c\��C<B�B�E���R�R����튚��N����(��gh�B��@  ��,&`:�D,@0x,	H�KC�����4�1l��@x-L`f��.:���C������J�mk�I࣢�_�c�X
p�7͎n��A�#A�*
@%	S)!LD�<O��0�]zŢ�? A d�,Q�2��> � ���g�.UN��y�n�;TJ7ء�����5��z��wq?#�i��"  ,p���tx�1a�X�X**�Ys��8 A��M�G�1̀0���Q��&�C �0�q�#%!��`��'�g��@|T(���!�0�H0( ���1G���=�� ��P���Q��� ���(�t�����Y�穢��y[� �D � �0  Xi��n�w���SJ�Ґ�+`P��w��(-ʈ���cy�_�MbQ��§��%�\��B�C$x��Py��(���� @�
 ��&@(
����')�v���-܇�e �1�
!��C�0fFb@FGđ3�a�"c����a�{p�=k<���琎1%2@P����� @��GC#FCg�'�c�Aֹ�C��c!��w�cob�]0�Xd��� b3�g�H���������C�!j)r�L�,�I�UR"d� .�9��Qq �(p�H	��p���R�`2F�� "B�P���\��!^����c��))���!��9'i	���>S,95��2dH��Y��H���1�����a:�Ǯu�X� #1����`:���Etb801�,�[,�$K�"U��k0����O� c�O�B��0�pX� �t� ��[�0Q��'������tQp�i��7Yg�� ,�׮�	��|o�����E�S(P!�D$ X��)b�<��467�c�Y��.ET\b�J=}��h�Q�.e ���=LQ A ���$�\ҷ������6�À�ف -JF�Fa<�D�a�D���C�xa��9�O�ã�y�g>�?�!!,c�@�� :�<��`�� L '� ,��Q�8/ ���ی>	 ��=f���1@� 
���A�>K��(�����i�)p�� G�l2f̔2E,<s NX�s,Sf��$��`EQ�!����an��F��(c��0&`i()GA�&�� d���Q �l1e���P���<�1�{魃�:�:j�%�3 E���   1��LD�E&�L��):1���-�ó�:�!��X� QP	i�!DR��d�>-<"06I�U=�0����i2��CLP  0w }-��*�����/���8��^�/K�gLb2aa@"�� rL�!�{3�{�1�g�Z0�zTo�	ޤ�!~��T6��S��n�] �&���Vۨ�����g����M���$��� ���� h�1�QN�4�����N��3��u�Ð����;9f9�0����+�A6y\ �F@�Ǹ��F���8J�'��Q�NV�H$*��܁��h`�e��0�,��R`JDB�ebt.�#&ąq@L�k�ȋ@��A@0LB�!��O���{�{�t�C�͘��������ș#(�@�` �a	,�8 1$2�O�����u<�'�I$�1 !$	�&��C��a�N�Cz��.��-"$T H (� Fh0D���>�N�!A��$��� �0ěӼ���a4�$j �!:�����c��ϓ�_"c�13n`�9Mc^���
��Ce��s���@��FL�4�;J*�#��vL�$��JJLfa���U
 ���QKnA������7g~�������!�%��qAQ���D)A@��7��3܂0<�Yn��Y�D�֨0� �̑��(��E�'�H��2�L@���%"0�h2��x���c|�S�,�� ǩ�4E��H#ICA�Ѥ�8|�Pl��p( �%��'d� ��L�.
��%>�eJ�d,@�i�  �`�d���3l����w��ǻH���c��HGK����#�F��e� 'GXґ�'RQ´�X&x�pLaq0�@,�10D��#�;�x��H� 
\�Dd�C<��'�����`�aX	_ �p*	���p�1�Q�B'�w)��dK��H����5d �bp �5n���ˇ�����us���&���������&��RMPAq�0�t�H�E@��Q(0
��  � �`>�zt��qU��R �tOv���h�3s
��Hhy���^����=k�"995`:���Xm�@̌>oe���r�G8�ψ^`�C�
7�%2�n��['��M�ʮD�r�����o�V��r�((��`����9O��8�Yb�!�N�4
0HC�l�0lt$D����q�)YF�	�ϻx0 �D�/R���u\���0� �T� �5#2�:E~]�L������f��s�_�~��(	�0X�!���!X*}���>B�P2z�G��8.Q�>^���%�X<�"�d�G�  0 +8NI8a�)ʸ�		@ 2�-��b����XJ"��\)�HL(��G�>�����@�"7v�9�G}cV"�;�"N	 x�0z���c��i��t�k��|��������8E��`�H��e�v$)����E�"�iӆ���!�[٠0=)~���l���0�c-,A E
 L�6� �(@o�3�[��������S`��00�� A(�`������0��l)	x<�_�}d�'����v>�N>��Wn�\	���/vDN$����{|��h�GB0 E|����:���t^�i汰�	 ����
���o�q ���&Y8)6m*�����P���g�K<���@�� 2H��f\���HR��5AY��\�ɲ����>^��y�̈�$�D��0e���H0LB1XX"C���2�&!$&X
��!$����B`@ F�3l eS:`$Xa�9�� �Ǆ�%s:Z�%��� T�ƃbB 5�(@H�D�z`����"+�	��Q����׮H�#i�y����^����'�8X'2iI�����0sC��p8�<�.�Ј�`�l�e=dq�H�=��0	h[�3(
�� P�f'/
�|��W���{\�)D���!�`� G""0�"0�$�P��)���O����}x˚�-Y��y�FQ���$l;w���c���@"P u��,�g�v9�\?.G�P��
"F��p�@ AAa�s���P`����щ��!f�=L ."n�qp�J!_��AѨ  �$ � ��ӳ��3A��j���I����3�	ns�@���XR��QG���D���:O�T�$x:2ǀ1�$�Qf�i� (�`p0FJDQ��L�98&�<a�1���チ d!2��c� P�l1�&�X22*~��A:
 �����Z��Pr�*^�b�'!��A9��ʫ��� �F�	3����ͩ����T�g�k�a	�baÜ�BÂ}��	�O7�@�qI9j�΁���3?�p�x�[a� �P!��@ �+�y���A=B���ߘ����3<��
�8� 0�H�H@P
�0 �ݔ�"�Yf��㼏�tC�!����M�#$�'��hϹw�|-�6k���d)��g������6M�9*��th��(
#�Z��� ���<�&�JCms�	*F�233�d�[X�E^�id��" >�L ��A�0� f���6�������-�5b0�}���{�ο;~�_�I�D����0�YR�@F��!r�H��%f�I�9�3����Q�H��O��a!!� L��� dHX#�M�&*bd !��î5����3d�c�����Ҡ0v��b"��R|Q}ծE����� � �G~��W �Q \
� <m9�����B�����o�L0�0%5GC@�r$��Pp)e��ӽ��?1��7	����rU3 C   � + ��q�l���Sa@�n��ba�GNG"R�"8Zr2ވ!2`J���o_?� "D�!:,h��?�&Io�CI�^ⱏM��s����y��Iv�t��мoB��e���ї,���a�:,��$��
�i��8$3����r�#h��bQ%(=JL���٥�K�BE�?��<�F�� 0  Pf��D�!�B.�"$!�q���}?G����}���	7���RҒؤj_����	z&���C� ћ�A��)9�05�$Ǵ�C�>=���Qc\f��P� dd(	�;L��r����ȓ0`uÂG����K��%-��0�B��$A 1��� p�* ?dA  ����7�{̧�\�� "s��(--#t� P|8���~�_#��������t�\A��;��Q�K�B��$����0�H$ �xKGΌ>�G�w1�]�w��7��$��H͜m��� �I��A��f$��`ҥ�C�)k�c�>`�p_��56���3��C|����ăð0h�bX&��\� C-G࡞PFeL�R,�8Ab���ӳ5$Ma�jQ��|ʈ4D��c��{n���|1������i>ίr���O�-�8ݕ� "�!'�4x2�HGC`@$����Y0�8�y>M_mt(���� Pb\ *�ra������&�A�a�e%9�!P�Ȩ�,8�C��0�� =�� 11y��of� @���×`�
&��mk�ʳl��� ,�q�(�BJ1�=�<�/s[�l��)bp���� �= w@�-�$:�!x25"a� �sg'|3N�#��N��ZzZ��--]N�M�(p����r�( �ơ�d�@`H<"TB<��	4�$t�M� 0j���LH�@E�A���S�K�W���	�F$B�`\����B�!`�G�����  �8g��{x��_�i��-��B�9�B�#P��D"�a �.��!��X::D��|��ytRb��.?��S4)?&�(�MǬ�8�;x O�0�E`�J�q~�O 
 	 ���CǢ�$�Rp�]^BX!@B��'�cc�҂s��y���l*/�/i�k��У�qHđai��Ő(�x��X���`̒���?�M#��#'I�H9U$*8MR<̋,"1Ha��d��d�� �P�0�hq�CLp�@�CA��!�x��2�$��  �%FaL�o��Q����! �@�@��y*,3oN" �G�B(@��l��C�!�����;͂��w����,�	x�� ��"��` �`a�` B���8�̘ЃQ:,9�AA�� �`Č8f��"E$$l0..)�Ã^L$�Sb!�x+�·x3�0�d� z�HR4����|��)� b�� �`����.ۼ�S��5���^t0;x�c���+Y @Vt�A��� CWG1�0�g��2嘊�D�H����@9���yK>�̳�oMV�$DC�@�D�$N{Jz��l��dp�=�ZP ��@񰐄졢± :xd��b�G����  ����.,��Bj�g��O�&/r�9f�U:E�` "�0 ���J!�5**����w��w������&�P�騉��XA@�@(
�H���*�D�0á8L���(����p���8$���B7��# A�'>6�K��X�c�	f��y�c4�0� O�>4*�q>���z>E����?X;<D�BxZJ�w3�c� �(��@�`�3��ʉ< n�<@��:���4��(� �0�#t˒�����X:��(�Ґ(�H8:r<���N�ȯ�/`�	��$�j"" E(����a=a��2@��6�O��i0\�ħ��&�4{�8�U�܆d�D��A���c�� �P\�$y
H��hp�y6��U\�A�`  �0 �y<��W�i���CGB����>L��Y~�[T��QG�H$ �#��F(aV,�T�	�8y����H�` ��	 `x0�1�ȋ,�aaÓ��1�f���aP"�J�T4������y/og�N�Ƅ�����d@��1��|r��7&A�ЉX,�p�s�	���N�i����=:�y0�ǰS�GW ��'B!��9?, �* �� @��s��)K�X��r�A� 2��^~��0�E> ��J (��PP��xq晗�M�iPk��#�4LH�*��F�&���8�p#���&Kp���00  �f�=�T-`��q�/a)R�b�!�@0��������P@͚���]A����>��.O��񋜐���'!�<�1|%"c�(+Xf6�Ƙ1�%�8 `PA$�����,��Y �,"C���`Ȩ`R�g�@GR2�m���X�q�7�A�a�m��qf�<(�ȃ�=��" G@���7%��� Bҋ,͌� ��`"}(��7H��0<H �#PR�D&��K�(�@\%�3f�,�)��34�q	�� D�`��'���r��?�}Gz��$ƒU! x�:Ӳ�w����i�D���6cL� ˻P��f�-$@�e(�(� �g�K��a�1��	��:�1!#�E0�2�2=(��KlR�@�! � ` � a@�Qs-�@��~�r"#
�,����T:���;�}7�isks���cA�5���EX��@�5G8�<DG�ё����P(c��tq���0�����
P| "��#<9�x�Ȝ�Y`��ET��|�͏6$��%�P�"$�!��C`�i�`2��>���l���ʟ�y�Ĝ>���]~U�!o@
�@� �#�7�M�eL&b�`�� @x�#cȐ{0o��%�&��.�MjB�B0P%a��� 09�=?�~��|��d>Py2k�Ɠ�Z��s���g�<x��Ha�},����M�]O�U���s�ɲL	F�:&��k��s��t���(3���0@�q  �m$f`�� �cJ|��  *E ���`R ����Q-� @Q3m�!s�BI(	��tx��5�F���?���O��u*��eA�������E B9BC�P��$c�9�$ё`��!��Q HRj�a@Sd�6�y�}�K�)1�ēc Lb΂��c��U>�`�� ��a�|8 ap$�� �e�D�T,ix/p���:n�|?��XP��C~h0��b�j
@  	F��RӐ8��$�m�)Q&�CX� P�aAax2��L<�{�K<����T�[�~��j:�G9�.p7�������=� �h�����G�Ѧ��a�a;AF��$�>
ǹ�wx�A:8`���	�Ģ�3�JZ)<)��F�_�� (@��_�z 0딕`�C�������{��?�8��D=��
A(
+*@�0� �d�(�r R(�@�a�B�WH����0��� �`x��0B͘�π>`�[l��E�_<��0b�N����1(
����2��NHt�2�4�|k&@`������@ C�.�x�@ :
 �����
���q��S0��:��#A <�CX�Լ���[�d����)��^歍EL_ԍ�0ps��)�;l��g�70H��  ���>ߢ��`���@W�и`
L1C��|�E��R���YLf)�a�Y.��  H!`�P  �_(@Q���0`�@�����B;�I�|3{��c�@ǀ5�$�Ea@���tE#$���A �(@Q�(1 �F�
O�Y�&��aJ�Ĕ 0ԋD�D��_�yn ���a08=�i�����0�!�Y�����^6 c   �{̹�eQq7=��`	���( �������r��Q� F`��HG�B#^d���l�x�>��!D���!��g2�N�a�d�뼎�7�"��W�D��PBg�e�6O�>�M��e�]�f�4IT�t(���"Z|��߄�ۤ�Ć�U���s��\�:>1���8irL� |��A A`   @ �5P�L01W���̆�uBQ�P�bQ枾�n��e���aϒ���D$�P P�$��"	��a`0	 �s������@������-"g� �Ì=�˔����0��ɡ��!��d��w�FA��$LK�6	�,�g���8�@ ���f�?����;8�D@��@ǂGK�5,C 
"���㹠�D�(��=T�<#Z���80[�n�O��F�V���l��p�p���nZ� �l"���H�,A�� A@B�Ke�7��ɒd�"��"}́ ����D�߄(�|T@�*�(��
���Y��u�<����������<��	'#A	�  �

LME@(�� !È�0��>��}�àB�&]�00B�
A1X	�ENap�E���Ȣ��G` cs^"��i� �	f �>N�{��dd�D �r�%�dYeCaD�P�:����[lcx�S���td0�cr,����r�j��;XBDZ���< �0J"1�l�4<��}������MYJx�`0E~��\�F����5tf�1�tB�M�<;($h�qa@`  AaD,(�:+��Evi��2���n�~ݹ�-Z( �`�|�2��� ��osѧ�IQ�AQV�2��{��Y"��GL�8,�b�J�% � 0��X�H� � 
A )) ig�);(h��	i@Ȓ��"7H!PR CÑ�0�9�y���2�yZ�D��`@1D>ς��X�k|��|/�ca:,�e�P,7$NqbJ�� ��  ��C0��-D�r���k�c�DK0�{���)*<K<��DF$�iA`BH4s�H�������^n2��.��i�����sL�V�c�A0��G� �6=f��� ��
 0<b�H RD誾{�}��%�� }��O��H�,R� �@�@ ��F��3��=�" �ۘbQ�����Rc	|�O�lq��#"�K �q(�U�)C$���� ��a�� 0LJ��Ȑ�s����1{t`Pb  A����%�֔��S��{�w����t��{��E ��a@������9�� k��%���(�:woƜ����1�x$@�`P$?t��?��,s�x�|�9gx'gt�Y� ǒ���83��i�ʓ�P�I0� �@O$P�9��a�\{��p�u:������3��9B�:(�P>UΣ���1�Ekh�I�    E�  ���}C�x��ܔ',��X�S P��M! ���(�  Dd�>�B�ˈ;L�(�P  ������"�ý� �����'��� �R�(�@D�'���B!$ DD 	���EL(\�`<� $$R~L��	NLDj5�ko�U���U��|��79
���$ *A�  \,$?$�z -�P@�59��2��A��g���
rB���b2��`�I���:1��I� �@CP�*��9#E�F�5��#�;�i�2��,q��o��ی��H�mD*q�2>���g�-��I��2���q2�`(kLdK+,D��t�[/�k<H�MN���0L�W(D��E�G%E�	�����&��� �U��/�Pb�ӛ��`$	�� �����7�<)���8��'+ ����d L�؇AQ�Ld�W�v�<Pn�["8���C �` 
��#�!�TnmZ�_̋\c̔˼�A�}ʄK�A)4XK�F�ATD"LM`��0��� 
%%��?# ?��D<d���ab2K	}�LLd�b�70�n(x���V��T�ȕK�;`@J Q d! ���t0�`��� I����~��ˈ'd�t�o�5wI�'�����:�p��P&185-ڜf�-\�=	� ��(u���m�������d7"ǧ��pWٝ�=f�'�����p���i�a�Ip8Z�-�-�%�m' ��C�D�m,I\�TQP)��d��4�8�v�
0Ѩ����B�V���LP���Pn���  ���U�E�Ya�$���T"����)l_�V�-(�p,��i�rs5�_ 	 �� "!$#��0D��w���,�C���B���Xw#t ��#��HT�(� $�G�@ x�FL�r	�9 )RZ�CA�  |"�~�#&I�<�&!C��ئ�M���@ B�WQ��,s�8
y(L�gx�,UJ$P���1��F���n`�g��Ä�#V��2:� !1(a�HmZ$>�[����S�m �0b�	�	O�Q��3��@�Q�.�Ʉ�15l"*,a�0�N��g��Ʋ���X�� A� �>78d̀ �M0stqQ �d�ӧ�����&A3J�1�<щ#_H���@�<�b���9��.6)
\��p�x�_崏
 r,
A�e�[����j�   (
 ��)b 8�o`p�?�>*;��'���(8 F
P��H<� �Sp�I0D�%����3>D��U>EH�1�<aB�� #&$���@A��#�#6�q�f�l"0NpB�>�
$���*
�p���q���P ~H��Xb�>��g�2sd("�$l�#π)	�\���l�F�#�nB0���(��0o�S�,� �����b�F�$Z8d9��-`�0� �Б؃2K�3��C�Si�p��@`|N�p,`����C��(�  ���$vY� �Q؂�CG#D��c|��x�*!N�
�8�#���?mo� T �@�C�`�|Ŭ��a�,�����^��8�����  � �|�\ �[=   �00:�=�˴����f��,&L�!0$  �" ���0���$�AQ�1 �+�l�x�wY��.�����Ç�	�q����HD�ubB��Q'	A�� p�J��h#47�أ��� 1���Y�$���Y=G"8 �,	�,c�L�w���aB����!0 � P��C��3��t�P�"���uNpa���@c0�C�w����B.�22���G�e����'��#��$5G�P8:e�ǁ��܃gF�K�@�A�����Q� ^��ml� lT8*/bs$<�9�=!�"D�@��(pμ�y:�f�:� Mv�ب��Y��=~��6���Rs����(�^=��� ��  @H! ���`����
4)��,)�L��� 8Tn � @�( ��8�@�p �X���� 0b�`@�X�ƈ	�Z`�G� ������@�����g�
�Y�G����c%�X`���H1G�a�졡�Cyf<'��}�@&8������	�ȳ�*	�Mfi"�2��"�Q@ �x�O3�c8��"O�5 ��p»�!�y�"�I�ir����s�*e����a���Y�H�2%�� N�lsSq�	�DG	�#�2
<�th�L�<K��>r��s��>镢���(�ǀ< 
[�p$��_��M�
#��i����`�E�O����o9���9hAB3���%���A 	�H�P"
��;|���0�t<�����$��P8"R � ���@G�Ēp0(���0  �9��+\`��%���g��(c3%�@� ?�S	�@`0BN���%�G^$�	4n�k(<��iP�C�A1����0)A���54�11H`T�� �1�CR\�\�N��b�@��>>ǣ<�KlQ��j<�� �(h��)��&"f�r j\g G�9�)q�ʘ�*E���Yt"�h(8@�&w1g�!�8"3J�� e��=<5�0�}:1�\]�(S!�k,��Q�ƘZKO
%�E�>7�#�Q=��Wb�0Tc����x��x�Y��6.]����E"�����q�m�#��#�$�P�¼ �_��*� ���	)#���߇P��<M�c�@��M�Y�` ���  h�(	C�Ұ`��0�$��ca0(
 ��9"L���2��rN�F��$�!lG�Bɐ%�J@�>
�� X�囑惜 �C�:�2DH?����.P`4��J��	7`HY����>��a�M��4��2Ą2���x�?�}l���5vk�J�r�`(  C`�Kܣ�U���C8Fd�����"�X��S�(��Ļ`V��@�2�O��Dɂbi J ^a3f�!��%渂B�{Lp����R04��&y|01W�"لr���x����4+����N�4��P�8�a�m"0� �@EǗ�|;/�o�( <%q�$�  @��)���%�X"e��:�<��g�@��� �` D"Z  +'�pd�HKI`	A �J"� �	����]8!��Ç�"�` >��J��a�M�w��J�Ebva��7C�?� gy��S��>} @�B�yt~�_��QT�?+8F@��P(��>
�|�e W����9��s�sB>��8�Gx+�$�����9�)�+��B �H` ̿".1`����Yገ����,�1�9�ϳ�\Eb@�{��X�Yt.Ѥ�_Ģ���@J�9��
��9}f(�]Djrj��P�BĘ9�yD˄5ȋɳ�b�.+,q	��f�S����g�cA(�/y�g0��{I��y��~���8��\�9(O3�I.��1���F�'���4����癚{���O%�'�*�x,� ��c*�@`=
 �PCB��R��_�6�<̈́牨 p����'�����%!���A�F�ɉTx	`0B�%�� �K`�� � `�1�2w� χ��d�!%T2d�p� FDC��0�
E�@��+�ȓe�IܠN�SL��}�$yϮWQB4H$@��h܊����Sܢ}~�F��A��!L��"���H�=� #±  �>0��qa�X�=���
�)9{P�A eJ���  �?	 �GB�*W�S �a0��,1����Q��<.0)3l���Yѱ��";0Z�3�:G��r���2aN�B���\Q�8�p�	6��O9�,�5�d�p�@٦C�s(	��Ѣ�8������w�< �}�g��B�.k�I��c�5�����u|T1�N�0��H$>Q?ͫ�Q��]�Z��kx�� ��"$��@8���a�P�:�}�澯�y�2$>�� c.���1�+�A��@ 1�	=JON��� ee�D0�%��GD��`0�e�!_���}� qp�@g�� "%"$ .�&�I<�dI��Fe���8��"A�N�� ��  @  �@*��
&���dJLF@�)OR d�5���F�!|��R>��	>�2�x�@�QV�a�6؃��ô �I$�ыG	@�y�����!�Ea� �{,�#Q����$80h(�� �'�G�~�%� K��p����!�
�`�(ʈ`���0�$C���a�.:i|"�O�*@�P�	�!|�1��y��w�X1��<�"1W�x�IR�W��G����p  AQc����e�#�o�%���To�H$ ��"�I_�D��`FN �vO_Y�󜲃 �y���ԁ<
��:� � �!ZLhh�  �`�a` ������P0�ȱL�D�١�"2"U 	!1LD�[�a�CL��X G%���{��E�
 $�[� �"BE �{���0���6_��pI��РȨ��D�xl�I��q��H�DJ2C
�A��'2f� "{' <2  ���Q @�|����%��E�"EZ4X�ac�q�N�C 3��k$x<��ctx2zD��>�1�a�1���(@aF�s�&��A���iREe�����H�P1 :��� �:��_����:�(���5��3�ۜd�6���d�$���� % �XI6�wu,�~��������p�{u�@ �@"2`z �+����h�$�Yb���_�!y��2�B�:� `�D@
E!�Q��Q"a!�����G�y^��K�p�u�a�;P�����"�`��i��a(X0BF!K��>�0���sM�Ll��S1
`�w�QT A@����F`��yx\� �`.�b�#,f8F�
b�<V0a�q��6�,�AK�2d�� #<�Ţ�CQO `�O�� �h��X2AEa���T)�B�e@@�.�:�L`@~H�w(�>.2[�؆�!#☠a����c � <G��x���^Zb�����(�����#E�v��٤���a@H��m^��t>@��QQ�y�9��d�G�L�Ɣ��a��)*���-Z���
�9 8Y��[�w_goDx
"װ� 
&@`&:��t�5lbz\�`@��}FL(���	)"��!��QQ��J�� �	��� B��TP�PBq#"B	H�q9�# "K�,6> �d00�q ���P%��a6�ŧ "C�]< �:=
p!>1�{@ T�/���gx�9�{8) ��7�mz��ŀ�ȑ�O� ��,>��) �R�Ȉ}\��Hǈ%:���<9G)نW��6d�)���F�� D�GI�`  B��| ��E
�G�r�Ox��	�<!!c|
>uz�S�
����!%��e�����0��</`�� �a�o�� ^��sHV��o�!"}�1Q=�"�������}6!./Q'`�4���� �9��� ��NB �U�v�(�"Y>   G"��..P &x%c����n��	ל) �A�H8�y�����F�`��:+��&Ag��"R"e�sF��P�B�<9!!ܡP,�"-�a�H�AH��Hiq@�{��L�y^`��t<<�� RS�_pn	��4�0��tY$���&���7�00��;	I0m.���į�Hޫ�oq�W�a��TQ9�I��<F�c�� �c�P�� ��!�� ��
�#1b�v�dLX�h0�x��s�y�"  $T� .ۼO�F��9z�p��<:�#dd�082xla��(���"3,#S�d�b����%N }J�@�Q�0��~�Fx��ߦ��,��+!a�% � ��>�4�NZ��Y'�[��e�}$ ���Be�&IN�@���-XD��\p ~���b B`�K�觡�]|7/��R,CZ\s� @( �>�'��,�1�b��f$P��OҧM�!2o��n"� P�Ĩp@ JD�GD�䀚%/� ��`0����(��  c��9
Թ� �$�b�@  � @�#�a� ����M��s�2
7 B�p&�HR���P�� �����E�4Ϙ��t�����{� neɼ����63�nw`�Y��Ӥ���D4Hȣ��%zf�O�J	�]dvY�LBBGO��8ɘ�8�� p�琸��C��,.�	_�ɓ���U��Y�/�YMM��@~�o����T���`hXMu��Et8��k��"��5UT"z�8'G��L���g�1�ا�;r�JA  09��#�����-I��  ��z��pG�#�\���X�w�S���D�̂8��L�f�2���PI1�>>s^ƪ,AȱF�&P���&�5�� D2K
"C4(���'���2��o�Qg���/�����F b6h�4wsDW�Ԩ��dc�9
 �0Ix�یXF��國 "(J Dg�%�9�gX��b ��ȱ��9
 ��p���D�6}&����óD
E���$� �$!茌n�dTI
Ι�Y�r޼�S0�ər�t/�Ӽ��Qhs?O�!��`N��9�948��� \L Z���\��\����Ǎ��3�D�E���K}�����!&G�i��*@��E�+��M�}
�o�4eD~�k4$��6��Y��Ğ��(-�e�E�X���]Ix�4d���*<6�>�M*;-3�_��,��Kh>�@�  x�� R�������Ya�J�z`�O�1<K�9xr�3�<+�`�T�0��sp�@�9���Z�	���b�&'"=��㣜��A�1�����b��CT����5��3��$=��M��"�\�YD��'��㼍N��41.)��d:��J��9���:}������8�~I�H"�t��N�h�r���V)0���-{K,A`0� ��a�6
Iߞ��EF�s�g8F���O�}2��x�9ʼ�c y.r�.��,�Ȍ)!Q� �ť�(5���#�HS�SONǌ%C<�����5�,��Q$�B�"�2F�!�I4��@TP��PC2h�7�-Ro�A2�̕�h������dء�M�2��p|s�)5(�B`( 0 ������3����,�]�Cn��۷vt�!~��� ����Y�E^D�'��%��[�)S1��e��>�XTb��3ᔼY0��E�1����\�˔c:�ܤC�1��2C��zJ�Ϙ�Π�{��]T ��)���in����6~o���)>�O"�Xfi�z��}�]FP(�2i��1֔ ir1f��'P*t�C�%�B�d��K�F'��1h,�"O��(�.��ηA$"� :2��` K��g�i^��?�8��V�c+  %�����ٖ~�S�xA�&c8\h�;	���x8d�� �A��;�M����&y�!��
/s�IL}�]����ܴ[kM���EV}#WӫiV���h��z����8EH3X�
�A�# `$"���t4k��y�y�G�� 3�ԉ�2@��6��3O�#�����#Q� ��q��8(l�D���!I ���0D��"��X���!		)�siH@�I�o� ��� ?�k1!>>.i8
>�8LCi�c �&*{x��	�Bg�!��@�#�D}��=_���K����Au|����<��	�g!�d��#�aE��CL�@L0>yw�s�L9�E�26np�1����q82]N�$<1 @��#�S=��*O��:"#(J8�>��ﳉ�@i���l�G����Ŧ�ƅ0`�����)2A2�>�MD��}��ģ�@�D�3y�{���!#ֹ�2,B�`-�H����P�A���<m>��!!P8 �P �i������Gg��dx�C(|�Ov,�8O��<���x�
s�Ѡ�26��8����]��8��'�C���`�!�#β��ap0��	T4lc�G���͏�~�K�O6ш���.�8�  ���FϫyU�pLA�y�,�`J(���C� A��/��.2%T٠͘
��@ �A` �� B��X��`p��H�` <"�$D	<<}N���yN� P(ď+[G6�&��I^R��\f�ޭ*n�QT��q
�� FYf�],2:�A�mҘXtI@ 0 �z�}v���@�d`�#	�Ca�Ĭ�[Of��,.Y3\�C���\䀀U(���Dd T�14O8��,�)9����#e��0Op�@ŀsL��#"59g([@�l���ŕ���=Nz�h@ �7�?�e�*7����P�Pe��F�LĀ1:>*���b<2���4	:>O �2�m
�1O̐}���!�<�'1��0 a �Df�
���ut�d���g� H 
�Hl �sys����4��0�uq�+L�s�I>�9�;PF�F��1�@�8��qlz�x�  ���m�u��S�z�sY&2��ɨ48U��+��0��τ�ͣ�}�����0��j�XI��G�/>���F/��7���6� �:3�hP� mTr���" ������,/��	�k �lQA�%B�#A��D����D�!��!AXDB!VV�� �Fg�%x�<"[p\Dc ��!�� r�H$�.E �*O�1X`�2ۜ��#��@�KLƶ��R�jV����%�m~����)-�>6�L@�$�Վ3��(i68J�1+���*����$�܁�S "�G�Ч�K�fD�����~`��> Ht�� ��y�KӘ��q���������Uz��0����̀���H0>�	�H$`Jp�3�HI�8f���������\瘐6uSg�)&�����P��lC<�#�}�s�aQ�H�    	�!*
��������� ��usY�1�(��0�vi��p�n�ױɣ��f��pF�zL13�ƴ�j
�&BA Q�V
V�j.����������
UE@P�f:�KKdB C�Gɻ�o�{�����l$|�p�e��1�W΅ڷ��,�Qf�M3�C��\�X�)S"��`�|r�S�1
<G�LD
��Hm
� "D Ñh�������Z;"""BD<d|����Ʋ�e�@�pA �cR1.=<<z��2��U8.�u�I�d�*Y�0]TxP,��6��Y_l���n~��Y1��t`�0".*:B�G�F"����p<TFHPa�,��pt9'�C� �"�,@8A�"�&-�ԀpT�i#$<�)��DF�ϔ��A2�f |l��O|�Gz�	Q���@�a����|٧��q�`���� ��� !SB�QfD�1;H��A�Mz$<E��)�,#q�����!3$�" ��In�GI���9B@Q��@0 �#*zlᨘei*&��u���N�)�g6�y�Z�!&��ϸ�/Ӥ��� 5Z��9�(;�� �s�7��ar?���',B �@�$�M�@G���
���v����I8��HE�+.��1$*2jj��7Ӽ��O��:j8��B-�޸\���KlR��q ʛ$�!0v�܄�ѧO�A�&E^a�=n��3D���s�*1)	�! �"�t���@X,����!�ʎ���A@  �"��1Qx��40F� �P0�11�PQ��P|T����$�I`�0@`\4$ �N��x��aT%]4�g�+�����h@�x i(��M���"K�F��`�}TʨH�p�E
G �ᘔ�U�Ӥ����E<�y���b$&�pD&4 �'a�)ym9�|X����]|��!
rD�FB�G���1���E�B�+�@��� �d���cB�T�XA @'ą��C>�#��&oR�A�!2ဒ�t\���q�����$�D��(e��3�K�����?a�x\�6��^�٢�6���4P�٣�d�֨3A�">&EƸ�'(�Ž� A0]T(����p�����>��C�bP"���HKID1tIL 2z�6�v�G���b��e����!�L�!2x��͏b��\#C��3C�F��@�M1�F�cV�8��C2�  �@  �Q�D�!,J"A8�D"b� A�8V�E���ApD��T�A9�����@���D@ 1' BBP00	a�9v�)㓧�����@G�A`� *>C��u�rԂ�s�9$�$��4�w���O�Nh�"�� 3�(��1���gO/0��Q�>��c���!c�aǸ�00�±�����&"���K3F�%c����X�=û�m��16���G���G�! �"P��E�%�h�!�&k�(0��2'<MDL�"
s�iQ'�K�	�ѐ�٣�"}�Ȑ"���%� ��x-�D�q�G��`"���Ѐ�A!D��(� #��)<���S��n���	�g�W�P��%d��'�I�wH^<QR BE� bTb�JLY�����f>��,*0VS KE�l���x*�"9^�h� ��m�R�80�P!C�
-J.�"��"Ir�`��ɳ���e���e��d�m6����+t9���O�"�Q�� "aL$�X@ `�Q2(+����BLHO�9.[D8��%��1�
LL$?& ��C��O�@e�u����*6����:�5& ��T� T�3��%�
)�@���"`�� G��`�d��`Q�2>�di�`��! 6�p�`q�o�ƛ��1�;\5] B%�`�:]"Nq
�F�R���TzA��J泙����]F�fM�����0-l&��  $<!>� lp��;9����P��O��m*x�اI����O�2��H0��b�˜�ea�T�h��X`hp�Z�$X�b�	 �v�� 1����u �A�Xd�ns���%� ���ѣG���]bt$g��1�N�Zd��
 2n�� �r�"^��5>�߃u�De���@����$\	��>:*���t�(��u�H���

'�����(+��"y^�1N�_y���%vxB���.�5t����.7��.xR� �`���.ǘ$@,"9L� �܍	D�	$�c�3aC aAFC p`0�Tp0�Pr�,��"&���GF�@0
��
��A)�0k,� PA�X(H$�D�@�H�l�w�^��BQ�0"	p$ G ��^&IZ��X�9�U&i 9Ⱦ�1�1�`���1�`���DL�hSg�!em0	@0  @0��3w&�l��C�(a�0��%Á�0( ��#o�3C&&�2�*=�8�"�!�L�Cx�p��)��=q����<�I�&��)��%
 @0@y�`! A    �B��$	�C'� \ �W�2G���6 E#�}=HD�~��I�Q ���@d��=:覯"|���I�v�C�) �!QB3> 0�kP`(!o�*�L0A�>L@�^��ŗ-�0N�>[�a���|�爀d0q��H�]��0<rxt ؘPd� tiQ�$����	�DK�����@aA1x9@�����y��,�6+\GB@aD�=, ��@9�@f $$O�Eӡ%F���` P��(I�_
*���8�M�D A`(=��'�e&(Pd��x�2�>�,aq!C���!�I�،��,)\	�X�F�*!e�P@d���r�L��aLb�!PA 
 �@62���]�T��.9"0/�q�@g�)U":�*��#b,|��::��.<��	YD>���0� 	 �  J�CD������ YBTZ b:�c� f�	��#�J@����O�	���
|%`�!)�+��� ��Z���i1T1X��P A �  n%Iڬ���1L ��9g��0I0E����&y>Ļ� �&��T$l\�d��
ɓa��tq���� �$���@(BDX#!,�$"BX"��A0 #8*!Cdb ؁�294xRB<<�	� `�4!WX�%��K�q�0]0��H06
>1:	T� �����@�@8� ���6[08@��.Q� Y��T�u>29T�贉�2a	��#�(a����fn�J�(� (�2İ��B`v(H@�0(�,<S� ��R�m "&�".��)�1!�L�G4V��)3������u��i���$D'��Cq$�I�$<A$ � (!,J$@C���D�DPzxL��� K4�aӁ���\"�@b���(S��L$��0��S�f|0*@ `���@��a.r�� �D� � f3[�BH���(���I&)S�#�$g��!*T�&�0���� �Gc����E���EJ� �&]TddR,8d(��Š$BE� ����a:�aQ80 ������A�}�b	�M��p  "2<C^�@"a�)�f�Y�X�8=B����H$AL@!xd��T�x�\�  @"�8�����L�s�����(1BH�9'�X�2��D��(3�2�M�Stx bBZ�Iq��(�LO ��'09��?Āx	�⏐�] ���  �A���ǀW�����e4C 2P�D�(�8�Cf�1W`�8�e�}�$D&1S�D�00  ���!  @B   ��D�u� ��E�<5.1�4Mz����1* *�M" 0RQ{3!Z � ��gy��1�PR�A�.=̎`1S�vI��H$:�:���|9�����U.q�
I�8C��L��CDl(#RJ��O�:2�$48�!�GB��� V�fc J"�(`��$
�AHI�08ztP��1Ǆ<En��2"b�M�a�6C H #ĠK�	|Z��@��O@� ���} �@ `0*
�P(  �� $ � �P  �� �d1��L�8�!��p�9\��q�U&h@��q��(�]v(Sƃ'fD�&e\l0C ���@�� a�61dBpP 9y�H�mj���<�A甘,"3!�Ŕ' Z�$4¡0��c�����i��#�k� ���� �  ��%, �4!1
Ӧ�F�%8���� �E0�� �T^~&�)B!��   �	��& �T�s�+�����a�� �E�1
A(�b a @!�Rhv����3��:�!|����9���&"���c�Y(�b\R8,l.����1�CAI d$	��1$%����(�%�q8��B�2}�<r��p9�-8b( 
B��H$#H0묂P�(���� B  tcCp�!P�0
��+�H0�DA�0� ��yl<�,�g��h�Fa�Ǉ�d�9�)C��ء��CH	���6
	>y��0���"B0��`�h�Ӓ)A[��
IAm
��  ~C�#`H�]��5*̓�y�6xl���,ѡ��@����8��r�)8�
'�c�C	��` D!	%C� DFp(�":���H�%�M��4��d�1"V�a se��a�! �00	����z��� ��;��S�#2�49�cZ@�a�D����(ExOX֑4I�g��$�&��]>˝e�b�9BbT0]B��P�t��g�w�����<}1�`   A0@�DFI(�0-Ax��H T8�	1]
0t��@�63h@8r�H�1= �-�(���t�h�Ψ�D{�~P#�0h�6*�@ $ ���`0	�`�ap |����P � 6�`�,r�~��b�a�	X�0��5&TP)�P9g��d9  x�ms�]20�Q%b��ؠ��	@�@�a��m<-�!��6Π.�02BC�a	�!�0��y�
�$x��D�!�}^��L��,2�08LB.q�cL|L%Rd	D� 0�e�WP� ��J�q���
�0J���ɐǃ�Mz/�"y��M��G�#� �N �Co����^�-�X�%�`|ӽy/dx���Z-A
*,�@)R� BB�HJh
7Ќ� T8�T��@H���X������)�8�"��ҠǇ8dBJ�<62:O8b�<C2�3D�#b�5&�)���tDZ,��Q"� E�,� �	��,y���S|TB�E��%Exx0^L�%$���V=���Эy,������O��,i8E�<�C6%�i�8(zW��D�PB�P2ҝ el���Hf"@��	?O�6;�p�/��Sdl >O�4�F ��.2��<Ox�5NtU�E�:y��o�����E�0#B̨ C$a�0���]<C�%��4�H�tpFH0�HM�g������nC��c��9^�1�C�`���Y�������x�Wy����a��.wQ9d��rJ�*	Ą�Sd�����a�az�%��a��(J�Eiar��4��S�Đ�x�sľ�M��|k\�aN�yN�8 @T �(2�
>? [�`�`b��E
<!����c��6�x�Y�h�O	]�sDF�T:!DD
��c=���$xʌ���J�v�M~�&�Ȉ��SHtir�Y �{lB��@�)י��NJ����p�w���8@`����5e����-5���!B0K'��0 g���`"`�� n
T�D,��9�C �c�ٔg�`aH4V3�0Ȧ�=���g�qsv�䩾P���A�Z�AH��4k����%"0�#�8 �0����S�Pc�4�֚�<`�`:h�>�5��4�")���}j2e�&�<�:]<r�t)�~7%cQ"(BB��hY� J$�(QE ,�!�,�h�!�%3*�,0d�D>��Uؠ�=���1`�<6�<�6=$L(�PFl�# ���x��: DD �D�H(��7�[@E�E��9`�)N�ޟ\T�9jN���%7i@2�uKі7��c���N&�����9�=�`
o��Fs�h��a��bb �>.-pn�(�AHHapp� "(�1*L�E�Ô�Dt1��8�XǡA��{���2���c�[l���
 @�P"B�`��`00��:�8@D 0$@DD 	�p�1:u,.Bi�	HP   �)i		� ���n`�#(�lai��h��������b �E�A��0�Ң��W|<��Z2�V��#�)"��!�:�L���I�����������d��!'àt@
,��SCEI( Aq8,%�! ��Z"��	c"5��!7Q�� x0���]괐�Q� �1UBb���%\� ���`` 
�0
�t(
À��A0@0AP#$hl����z����<�[���S2�[D�8$*Y)�
����^�y3o�'�.� D�T��#����H�P(�ӣB��YS  ����!��a )(h��֑��q�mfx�#,yl0H��aS `�%`���9�\d�1��-�Pxx Bd�Ţ(	e%�V��2�H !�H!@0e�h�R�C�$K�*�
��1\��0|�*�$����7�
�wwAOE�CŌ������0� !�0� "���KNƒ���0�����%�@<�3OGĐ122'tx���|�?K�![�0(�sLMM�� �@�0DDP�(A�h�$K��cP�Y� ��aj2r���!/���5,���RE'`@�m�Q�a�>��x�ux <�G"�d�@X��+��X��� �@ �0�"�=ύ��af|�o"��1��mDj��b �2���� $/c��'n��9D�(wSĦ�N�y.��y�3��(�@0ఘ�*�`:�ד0W�AH!H  ���Iј���ńB���b�+�YB$��Q�>6�P� �8 ��,N�!PB�}fX�+�a���OJ
GLK"b`�H�� �0LD1��$ 0 �8a�Ȑ8\�!�Y61 D tP�Ps~  �Ǹ��@�.�(��X���3bA  �W_�Q� 	�� �Ht bEL�`B
 �� �%At(�"�0��:��XL�Q��i���dX�"ߣ�������Q�P"	�YQ��$O���!C@0DB! " � AP��X�@���֙����9�<�� 4��YcB�}�$�"Pf�΁`"x���ZZ,0@  @ B� =
 ��o��g�|���� �@�#�?��fȺ�PƑ����kOp�!� �ɳ�b�����fB��ѐ!�@8xƬq�F�=�e��` !	O�E0�C$�N�����۔�aD�P�Xa���	�H�k�S �`@��!��(� � f�0� �bQ�`!Bh@"  �0:<��&�.�e�!����x0
����0�w�(�r+9�1�C�` ��LX��BxX�!0P���E  0	�!D,c�@0	 �詬�sx6�9A%�p��	8�gxD�]�d����.6}!D= HD �0X@"R�BBQ����� ���@XA�@�X�?����"sls��	g,�y�	��`�U&�`�<FCD���22���@PEP A �G� #'� �1�O��a���=��� Бc x����C $�p.z��0c��L�!V(r�)]j��Y�>cz(��0�z]�5�ܠM�x(	)�GJ�� �(��1�1s�Ԩ��
u�@�P<�is�")�Yx��D���B�"}ƘX�Ǥ�|��B $ ӱDp09`�$��a��� 0 �!SGD `3��c���1�{H��D���qA !�95AX�G�aB����c<�H ������P,X9m0 � B"�0�D"�&�J��A	 t|4\�k��.#�£�:)!Y�C�71q�5Ya��I$ �0� 
 D�����!!$��@�   ��@��#��$,���H���>��N�ɓb�B�s��m�xlp�O�,�>(�0(KG�t��
P
A�`1 �X,�FI��K$v�%�K�9-C� %`0���
 إ�[��'x�5\���Yb�!�IౕM��!�H��� �2���1	���C<����f0�� ��EL�*�H�X�����0�������#�%��!����2O�aħ�@P����!P�DDI �q�@�J���(�����P2��H��
3�����P�ġ��0+����#�3"G s�c:��B(` "�%�D�!��@�X2�`Vjv�
��(��%C`��?�\$�7��A2!����٧�)R:8,����	"LFI�U�a�h�-�ó�`� (�@D`@8�� �8,����X��<���0�������.� �+�cnp����Ι�E�B�����)p��  (
 �@0�P"5�
Aq/97X�!
�} P�AP@��W��D\�n�c��0��c� ��S�Rg���<b��7� Hd!t�r��I�)�!�@��F � $P <�� O��<M :�c� p�u^#��		���9�yvi�1 ��	ȓ ��-F|�1.=6�pH�P$D"-D@Q��0 ,D �!� �D0 )Ȑ�.����b�}z*( <
?.���ue�)m�8kX��"��1��bPf��T0��%B�%�a�#Txs�PE����I$�BY�x�"�����y����\�_�)����2]6�@�Y��`�ß�kX�̱�O�Ϲ�5^�`rJ�%sF�D��P:z	� Bd%&,��L�P ,ɨ���!�JG��#r�7� ���<��d+Tx�<��,C��SC�������C�.�,�c�@z�%����c�--���t8"	���d(�`:"9�9�;y��Ɠ�, : � �!D� ! %��2�G08�Թ����G��(��L���"{�0Jl�����"�����MLn���!���#�z���B	BL�"UN)��C���:WA$p�)�r�H�F���,1����u(6�.R4|R:�(̀�0 ��	1�bH�`��q4(D&�fJ���yn�Xf���2ː- e� �PA���''H8� p������B��
/r�o�{\��GK�`� �eeB��H0@`<K�a�(!B �P�ObI�1�*)t��̳��D�=$V�*�/3!�	��!�'[l�d���448,B���� 0� %�HBHD
���0�2A a���!a)��Ev�8<7�1�G�e�w�!�r��1������">'0��QI8
< ђ`:��D%a�X��D 0C�DB!b:N���69����bT�x    1: ��� W�Sv��a���/��A�#l2�%�9�m<������P�#����"��gL�ltR~�_��,qJ�c�'��⇒B� 0�y� &���=D8V)���) 8F!�2m�`0FĘ4 4�P��	o��*.<���C�P�D$�1BBP0C@)Q
! !�!P�F&�*���
Pe�2\ <
�ǰD� '�����,7�xs���#���9�T�D>�� 0�ia<�(c���   EGK���`��>W`��	y��I��)���2M�T���h(���S�sDM���ȱܡw� +�+�BXE�D� F� ���C�<cnc�x_b���ɒ0��a�R�)�Ӝ�0�1��C'���Qe
! F@��!E!
 � � ��}�w��յ�y���ON���c"�� �WVjyư�<�S�hL1�J�,�F�)᳋A�����KL2�o��|����`0���  ).%(��xƀ9\:�ֈ�ʋB�011�8�K#ϐ��$P"R(
�d�P�C�J�)�ˈ|�#*<M�r���A�0�0(J�`� �A�$�C^Y�W,0< B��[��'b�y\f����
$%!t<��p\���<�_r�'�ǔH�� N�i��Б3B~��%Q�EI(%% �HB C�)ib� rn-=0ǀ�P"G�w�D�,��2�"*(8<�C"����[7CTx2@`VN�( @$��0@�DJ""� ` B�����Tdls��0� ᑢ�e�����2�a�9$O�C�( #��rĄ3�t���00�XKEI  �1��� �5�����b¿��>��5���! +	ljh�`5�5y���M�:.��8�O������~�ϑ��:�6�[|�u(�s���G���E��SQ�1	�pH�5
��Y��A   ��
S4��S@@�1s �P()�������ӥN���+thѣN��  �`Db%�	��$�  � 
�D�0  �H;�\�
:S���`Lf�	�@@%�"���i�pu@�U����Y�+�8�	����i�H$��B �D  �`� (JB��a�,٠OCG$�Y�8g�]^�qN�c�D��]>�)9"N(p�M"
HXL�Xd�r�o��Ի{.�q��5  �P� (���(� JD!��,!aE1CCGA	H��o��E������Ȁ*w�Ys�}f�هRd�)[h(��]����1	�E!@GAQ ���$�`�!�0 �i9{�����o�G���  8  �]Ȯ��l����qDJ�����n�I�
xD�4��A�w��k^No!�q�  ����S~@���դO�/�
.>UZ�{��� #���G�E$	G����	���
�x�`,]& F�SV�2EEED¥�jxL�����<B$P��D
���B ̝�� J���]Dnq�*�)G��#�d�"!�!�� �	�Q��%�<��K,�:"�Lx��8�?�L9͘��)���8,@ �$�� �'��D$�[c0���%��3\:ML8,l�ԡ<�%8��A�YSG��#tDjpT���x���y�� C��C���(}``  f	00�x�(�L1r,5����Ƨ8���.�$� H�(� �OJ�[p��Ц��\��q�?����Q`���H@� `�Z( ����u*�d���?���G����� �͙�F�af)�f�M8%1
,z����������F��0;�'�� �R�6����ON�����/�1�~@��gi���]PdJF �%�C`�ۨ�x0���� �qʋ�cB�s�1C*:1>.���6.d d8�g	�JB@H) � DBH � �(�B������@����$KB�
EfY#ǘ.m��(����8�|�����B��|��
2�a����#���(@a�
���d�!�A�PP�k�%K�<ʻx������eFF�o��	���I����r����8ߟ���7�WLX�Q�B��TA ���eD����㒈#�戜s���f����ʏ s�N�.Ѐ�A��	Oq�JJ �s|���X���y'=����DH48r"�!�  �0� ��S2`�K.���z��3� � � @YS�R�y�LsF�T&�x`��� p؆��<CҬacr�!m(E !* ��:��a����̐#E�3�au�A� �㯄9��H������"C�,�sB�A�&Y��p�$7и��-(&6%�l#ا��R F
a0 ��H��@
 ���<��0(k���iNx��2���Xg�	BJ
 ���:9�2���w�s�}xxrO��>�F������='���4�s.�7�� �)pL1�ǒ���d	E�$����I$ʈq�o�O�h.���XQ�I�ǐ�a�t5
4hbs��,�$  �rs�����0'<��ߠ�C0ÀJ��(z��@H�%"�V�	��*��1����~������ ��Hؔ�Ȅؼ��	!���_B>Ƴ<�A`/L �̿�?�|{�G��  
2�
�`��%�H%�D0#$�
豠�q�����l柳�[� ��+ Q���iگ��s�$E(N�G�;Ԩ�I��a�p�
MBR�	��x�x����7�`�D��Y��O��!cx$B~��|��s.�I���a -��t(Ba�hؼA�*˜��5x�Y�&`�&e\�,S�	�MZ�cS��I�-8J�8&�Yn�`D$8 -�D"�!�DC@ �!&`e�d F@@ %����HhZ��m�`�L	p`  �0dfDF�O{N�8�&,%g3�9� �K �uߥ�\���#c��"p3a��:�lVH $"-�"����)�X���:��|��Oxc 0^I��x�.5R ��2�?��,�!l����q�0��rཾ?fn�|��,p(��$#R��ꉐ���]$2<�V��"t�0�PТX��9�\o�Ο��Z����C�[�� ��3��OT�K�	Y�<������X�A
�����}>r~�)g���#Ch�9}n�ʈga�b`�H��<��K���S���s�{���,� �O�o��y��q�����Q���ɷf�	b�e�8�2�<�2����!�.�`R�闟d��#�5�g��� �a`	9bbns��o�93��RV�\�]�g�ų��"��H�h�LH��mV����7�,�e�u�<�����>���8>D�O�r�K�X��+�(� �)nS%O��	y:e��X�DGĐ���c00D$��#��I�΀��.��u�M�Նr:�9�����8�@�Hv'!	B8���̹���=E_7f��_?���8+G��!QH�m�a��G�۵k��&��`�q--#� �I���8<h{+L��|7���,]���Ur��s4fX�	�A�Sl�AD�D�	  ��X�����|_���\����ZM3-C�u���0��-ɘ���P�)Ha��x�a��|I�����p���
K�t9%G�61\
<S�1?Yכ���H
�q޿��"���l3 @(�"  EQ@��H �`�P  �o�;t����c�2_������[~��}o�^����G�{���4��hT8��}ɗ� 쁪�!f)L< �l" d  �
�#�|���W��ļ'
_�����Ľ%|�](,�@�@ 
�ԉ�)pH��*/�l���q�9�Hщ�La,Sd�CB6q(3�%a�#@ޢ�+D dDR�@�PңeF�ꐫd$"���D0�\��
 #��
˼�e��-��S�H
���@`0b|L�S���"ă��YC�z�� w�9��>v���W�q?{�fe�DCE�S�Ң0�� V��SnD~}���~��� �]  K,�-d.r@���#r���   �h(pdD ��x���OPN���3�%�40�e(�(J� � D�#�)��q�O�� 9����t�I.3�CJ@O��S����i��u �ٕ�>��?��>?���&Rp��e
���B@PBP���f(
 ��6��{��|;����������;,2�aZ����R��a��x�v�h0R��*�I���� 0 @
E@�&?�]��,baa�oc �2Ø=Tb �B��0l�p@@�T���A���#���"=|���d)ѧC��	��g�o��G��!��GN�!$ �0@ @Q@G"� @@BHH�sx�<E�G@�	�1c\R02��i�D� N���<�i"�� ��>�|�~������3��#��"(!��D> � `A�-��.��P΂��% ]  �:C��.Ejtx�OX� �p  @�P�
��� �㓜��ɜ=*�X��6�(P�`�  ���7��!S�a� ��Y����(������	2>Y��i����a�O��  R ����̋��|(�_1K~�A�����X�P  � $�T �� Ǌ<
آfA���^��5��-����y��4�� ��s�+�%f�>	FQؘd�c�D ��������0,�9cL�Ę\�Աy�:_��cSxD ��	U&8̀(���Ӂ�3�J�K @P�h��!�Af�-�)�s@H�y�x��e|d�}J�<�'Ó�o}�8�!����@P��2��������T��1	:2�{@dD
�P�Pg�52 R�R+ ca���� �FIי=�j���C	 `=��=�C�M����R�b�a�D���`���@ �(�U�� �^?��^n�Y�g9�Ձa�(l�y�5� �, �  I   `HD, ��-<��y���uG�:ڞ�҄�Z��!  ��X�D]����/�)������EO?�*0���#�6�O0��:/�J!I��p   �G(RT�g���t��<ç�$36��9+!�(��0 0��`���%�BQjJ,	���*�=׈\��9L�أ�$6X$iPg���Lv����q�VQǞt�a� #H��O8�'���K�3���=$>�R( !�� �!3O�;`6i��a0�P��FF'����
�B�#�h��̐ r뤘�p�	^"���/"��&�N���K��X� EaEQ a0(BB� �(@��Jp�((�b����R"�1N��	6!�@�T�$�Pn#)p����	ʞ;� �X��N>C���������`�%LE���b`&B0�`��֟�Y�y�  �n��$� �<>�].#��r��^�C �B0��8��M*,���Ӝ����xFS���  ��A0! �����Z �^1�_֯����o��>J��X��  &u2�̳	 �v�	�`0?ʼg��\� ?����>_��ʈ��Q� ,wt��� �@0
P
DG��a���c��8f�Y(���l� {�s!��(s�W��N�&a��iӛؤ��  JA  �<��1o���K�A����9��>"& �� R�g�"{D,�1&����1F��)eVi�b�>=���3���%Bj���z�����d���d��s��$Jr"r�j��� C	��ɀ8cJ�u&�d D0.b3�E�S~L���HBI$������~�.���
Q,B2._�Q|���Z��
���`0	A2	��L���BX<�Y7�Ɵf���u� Ć0Y$+� d	y�yD,L�0�  "@
�G�  ��0 2������~�����c���2l��`FQ���H\�z}^O�W%x��Հ � 8�K�����1fp��� <�	 �� )�a��z�y��<:��|�O�K�m��P&A@P���AQ,
 � h�0��>}���%�么�F�I�:�0FY������94��F|�7&	�Iy�&�Jq(   �� �0怫<a�,<%����M~�<��&uN�`  �O
dL@���e�>�!��G��@ !��2=x(SB�� �\��$���1�|�ށy��m��ܞ���gy���K|	�9<G
 !(��B0�Š$�6 ����dB!���(0@��2F�bԏ,�10�	��[���*�";�b P;E_4 �7���=��w�ƐM5K,!�8<5��0GƄ�w���r��<�f��B�`�" dXᄈ(W���A@ 2 �A�h�ID2�Q�`r(?����~�DX"�k�P���  �{�i���
�_��5�8�Jr�?mf���6A�ݻ�܍�A)qJ�&��� �h�$  ���#~AH��5)J:d���럈󅞟૜�!�+���5 c`5
 P�%��(BCQE�1f�[\��\d�4���@��.G���] �N&Cd�Ҧ�2h��  ��P  &b���eR֨��kLy��p� Rb�@
�� B������%}^'eHB�C�ӆ��a���6[`�l���|���%=^�������a p{N���o2O�c|��S(@��� a��`E������p�Q �4x"2T1�؅�"`��0,c5�'���1�.�=����=���S �t��J�q~�O���l\3Z
�@� ��$���+���|o�# �e9@���4�E(.^���ƫ   �#�X  ` ���?b^�����՜�D��"��O�a%��g��`�X��G���|��s��?�D� ����pt�U��*!/p��  r  <   @��=)+�  8  *d�\z����ivYg�C
`�c�f�
�@Y�A$A��G������:g8�O�K�Ș�͝(�g�
C<��u��.��(��� q-MfA��n����3�׹�{\�g�#�  ��\�}.�4�	?M��)�E���1l9}*��!I`�8�\��
?���x����
����]�x >��@:��c&@�0Vh!�q>O��8B ! ���O 8f^��8��{yG�'�I����0�f�K 8r�
��̱t8�4�@D>6)�ȣs�|\�3K���,5 .)IP��aJ, ���  �ǯ�Y>�x;߬b�%/��>��
���P�!�a"N͙�'��y?�'Y��$� ! �GA��8!  ��P�=������~櫴�0�B<�)��It$���b08r�ϕ�?�9���������g 8�h�Y�䧹!F���C�Ȃo�o{?�O_�1�n1���1$��40#(hpX��ɨ ���k(۬A�Lf�I� ��d��%(�86�'��r(���S�8,��Ju��(������\g��!�/�g��.�e��Ih�	.������Z$ F@�S��&�Om�����e�	��e�
y��e��,��>�d9�t�q�`��|��A�`@ �A0  �����$�=�_ �����	�0!`<Bc�0� �`0 ��������1D�c,2�p�+�P�@ )11R��a`�p��#g< l��׌�d�>p@E���#�@GA��jZ�,L�a�8��&����{�6����^@1">
��  �������:_n{�ELDm�a��D�p�	(q�||������}G�4�� h��<;���<0� �G��m�@!l����o���iv�(�8<J�B<K, ��8�@�b�h!� :tJ���8 �!l����Af1`@�|A� ��K�bF�}�ģ�~{�^���h�]&�s@�Y~�K@�Xb�����X�-2,a�3�  ����,)/��τ'��U�B�*K$|�2%��bR`�*m�h�X�KL���@|t�� ( �"Ӧ'���;���y�_��N:,�� D˒��h)��@H
���ILD�r�	g�a�������a��!�D� ����h�a���IE��C����8"&��x,��cP�����H�?���3��t]^�L��   <?�m������|K�� #(9H$&'# �@@`Ă����r����X�%��	 �V�,�����j�8e:#ƶO$g� � �DM��0�H$B
A(�P-99�95saf�i��F@�2�aFR ���<���	��}(��a�<%$�H�Ҧ�B�}>I��˄��P�Ȉ>w@�4���HGcRd2
	&h<�K��&/�&ﰎF�>�߆��R�*Cޠ��4�)s³\#�B��"(?2�A�ab (���Y��:������S��~~n�%zL�x���!fd$<��!  �?T):) ��0�J�npc���1���[X,���JcRbg��;�	�jִ旵��:��a�Sra!BB�ph;������Y�����(   �`1��c�L-��	�,�Ԭ�Ҡ-i3s,BPB!C,�ω�X������h}�6NOí� @�0ą
X�� �� V����|�u�E ǜc`2@MK� �"��x,�  ��BD"c���>�c69�8���%R��/��< �Cei 'P���b�;�$nc��@�� ���J����LX�;�,����-F�� h����
�I��4�y�9fi"p�,?��G�1��S�A�!��,@�/Qx ��a8dBa  �  �@(�����-�N�S���?��=����2���00̊� ��Aq Ȝ3��� 	�n3dH
�'"�Y��`��-r!�������A\�t����c��2ƒQ�����09�U����u�������ߓ2�#��`  
��5�і����sUk<PhI� � B��.�},%=��;�O1�?h���n�X� ��-�����K0�C���z���2�O����ha<���� BHD���`�!�  j�2;����1�C��������]�J�(�
�VAh�W��M��#��:*&�|��"�#f� OJ�o�5 �,��甐�	8�gL�\Y_f|��T)��$���8��Ƞ�f�Y����>}l���ܞ��yF����Dd  �A�0@'��[d۞�'�ϗ�x�h4g��S=���7�J25�OK�h�@ ������ r�d��s��N@.SB #>i�j�Ƴ]�
��NΜ�`8�5Nq�!t�9����*�#4x�X2,��"C����&7�K� C`0D �ǐ@������)H3M�p;f�{D ��#�P!�XR�E�!�xF\$G M7O6Xt����G<��D����4ی��#�ǔ1��&b)ID"�@(	�cQ:�C`@B�X��Y�'��qV��8D� (��,�  a�  �PK��$�?�?�*�v��thr�kЂP��3H|����x��ȧ�qL�yRFt� �ÿE�}�Ѧ�jO��9#�H����'�{Ȁ�a�u1x�%j�K���sD0M{l�y��Bb@  �0  �  9��S��@���Q���lϷ����\�:�`���Q�@ ��? 6>D�GC���.��A(�m�HP(��PK��}!Mz���4��S����ϛ�u�x�_'.�1�l�.���.ĒE[1$�9I�` �q���L̻�K|ϔ      �   �^+������'�~�=� %���8v؜�e�� �P � %MN�]��l3���6 
R�7�`Qȃ�n��~Q��,繋pl�����'�`N(�t��c�,�`,��A���xv"x��r	�'���@ ���T !�����ž%k����>_��,_b̛H�qH����:��P@����� ���aW���_�w�0�A�M~�k�(C�a�ʮM�?����3Ø��6.Y(}t�/_`��݉�D@�OE�     :�7��粭=��rY`���6���<&�	&9�%���	8�0(�ˀ *��E�Df(�!c,<6S<R ���P�>k3�%{����聬�%@�Ms�P�  �B���P�o3���_��U�(�HL�o\�Ϲ�X[��*��!�	��m	��Lļ�Y~-/�a  `�;�\2������=t��8O�O%�r7�)��=l� G�H��F���]bVH�0��N�@���d�����בH$ Y ��� �2�t�P)5���@��x�=.0��#$����,+���]�p��X�gD	�#BF$B �!!B�88 Jp x����r3KVdY[�-Y��(��x� M��G���|�����y�!R�2�:S���g����H�e�h"I���\⡗=^�Q}��ʻ�-N�A�-tB���R�=����/�L��#�0BL����폊yE��4��+ۥ�u�s�^�!��8 ȑ(=�;���m��&<
�����Rw�"(� �x=��"/6癐6O������Q�$"=4�,9�O�������`�-�  ˇ��  
 �.m�nb%%O4����2:��#��Bc�*���7�i^�S� � A�Afu̟O�&� (S��̽�}T?x$A%!Q��  �pR�}52c�\�"��
�b2&��0&5�蓥O���=��<�H�+"�$��% c @� ):���R�!����A� m\���љ@Q��A �x �A��q1(0`�K��rW������( 	�uX���ʌ����ǉ����`	�c0γ���Y�q}�/'a�p�7�)�I��h��g�*�\��16y-��ݼ�e.p�>Gy�4-~�{���u6�#�>�l���C03��� � �MW𠾓?�qz�%Q"X'�	�(�.��q�6��k��Xa�'8X���1�բMAF�ǲ���+#>� p�� �@rӐE�>x���c"!P|$*1=jR���83l@�Hr �����3|5  \�)��(?2 1Ȓ��?e�%� ��F�.IbT8����N�u�)S��"�N��A�Ч�͇�1  BC���!(  A�|t�BA� 0��J	HH
�#! QP(br9|TRR�	�����d�/�_�ZO@�P@�`�b Ӣ���L�y>�I�(�F��#E
�U����� Y�x���a3�&�b���3|��܀�%�I�uT�)�M^c��y�*�r��1�#��<��G
v.8������C�Y �C  �NV� ���1o�ô蠔��!���<N�4kl�q�p�s�r������ȉ	A)�I$r2@T���1�T75 �p@"�(3�
m6�|![f�ԇ�� �!P8

=V�P�~~�g8���A� MD���"���d����]7T�AqS�����@ ���H�g��p��ս
s�R��}�X#��G����il��F�� (� H�pP< 
�����0>b#�1),0:�<�!Jdi� 0�
���d�̗�H >`p x�r% d�a�G�Y�8Š���%�Qv�q� �El��r�5����#P.��<��E&9��pP�x��c�ef �/0Hb�x�}8i>�O�����s�$AB� �
@B�'e����P�_Mۣ �>�[��5J֘	� %�S���r�u�=y�n��is�#�b'|ua��-+��2�&(A 0�x��� � H �@ �IԵ�H0��$+Ѓ��Ca�r�G��V)�gI�$٢��ͽ`b�P�=@
�OAHH  � ȃ��a�}r2�0�Z�3�I��B	q�7s�X�1#O�""6	8��   D(hH~8FT"
� ����08� ��1�c�9"" <
�D� �����K�)U�����R���1��b?X�kx�  (M��01O�SLr��)'����8���ah� �=Z�:�hQ�5v��f�WQ�r�0g
�`89z�y�mF'���vx�
���ya/�L��$0N<M" �a��af#�/�ʖ5��<����2�t�w�؀� @Q@�M"�L�N��aW^�G����'kz��	 #P�SS�)HD�@�P�� �!��)��(0H�n�Ȕ��C 	��#�01�
�N^痸��~�9\�$��TE60�)>�P���`PQdH6�E$1E�hP(>L�>&�A�m:�r;E.���} �"IB�$�K3�Q�2�!�  M�[�C�J�L"m < �J�D�K�x��qP��Ĝ"�@$  �`0 �����Ӽ�? �Вq'��ժT�w�}�FX��/Q ����v��h�ù���?�n�)�s�E:dI�s�2�kL!q�P$;��e���K�$ ���!2x�GA؛��� �\!�dK  �{0\K}H�~5L���'����6|MV�(�0�`�5*v�3>K�Ly���Oy��S� ����j�c`�@�H�hB-�   �#	 	C`'��杌&i0�$���`4�S�S@�.�Z�0M��� �oxr���
  ���*���P���� j`Tz\3���m��"�B�(��fL��R�b�q"f�����6>���k	 H���7- ��K��@ �	U�djy�C��1��� P  Ĕ,
@��qO�		+�(p�! �!  (1&a�מo�[~~َ���ϫnrM�h4��K:q��(=v�8GNz�>	FY!� 5��PQXc�����U�A��V@��8c\3�E����!�n*P�B�*M"$L2�  ��������2yp�	q�xF3� "D� �!  ��������~��8K1�|�7�[o�}5P�X��a��<�!�L��Wq I�Ax��j*e�p�� �O�⁊ l�H�6&>.�"���da T$L'�V�$��Evy�ӤЉ�0�I����0* �\?��> TI�� #�T�"�H&: ��f�T��(�E�1�B2� )@�-�B@���4xF|��0�K��&&T��-�H����&��C����QǆRQcJ ��   
��@DĨ�"���������&	 	����]7�D�&c���8gH\�p�y���EZ���p� ���U����0$�q�������� ���F�>�q�B��>t �s�bZ+�n=��<`!U !�\!�p$��aP f> �����6	C�!�Lv��.��ϥ�b"������iq�mt8���4�J/%�RSH���� �L((� �� �� (��=&I��
ǘd�iZ������^�f��G;�
}u�'M�թk�1$�����C	щP�Pt<T B  \;�5Ĵ� *Ԉ��$)q��$��6Y�����F@�MV�Iy��q�e�,>
��    �^v��J��!��L.���Ya�@�S*��"z��R, 	L�}��!�,�e�O�.!O�!y ��BH �CÆ��ѩ�2�ߦǟ�uD,3g �HH�ܞ�#6ء�OE�:s&p(o)k���U&�q�gq8�#�,Qg��W8�v�0�,��[r9� АHt�X�C�9��u�N�y \��p�"��8A !=*
2䃸��!���QQ@��&h����[g�,��1D9O�q��x(}��6nFQ�K���a�]
"@14��z{��  ��0\c�`L��M�):�̳��0�.
*�A4�[tV��q@P �� �0%"��k�oQ��3�F�*ä0=:��Һo�\��'�a�豌� �F��bӆ�x��
 `�eBf ��:���w���-�AQ�tXF���x
�M		 	J��< 9Ή�1XB�D�1�%��g�������A`@'�o�o�/p ��^���ݷ���N�@MK����� �>���E��EtF��p�#\�#a"��,w�w9�+���S�!EL�H�  ��c��0 OބE����YDO-�q�\[E�Q�vNU�������.۬�3&p���܇������%%J�%PE�4m� &��iڌ���
g�
ƥ��ip�oSG��`�&G�>�l2��F��'ֻb�Ǹ�>�CBKG����@8�����r��:�L����C�Fء� �Pj(�p<8I2��é�cP��
�d
�U��  �/w뚂o�i|���s���@t�N�F(����@ <!!2�Ę���8dH ��@�CF$a
���@  J
��8ó�(��|��8*��I~��j $� c�f) "F�R#�01�P� �7Y�0G!���x�{2|e}"�����#d��K��0�B 3T%�{p��'�<��U��d��9�����}�}����b��<����ɡ>�����x
�&�$,L���
A	%�2#  �P����;��	(�p�
S2E�E���vأH�Nh��y.��{�t�B��   .� %P! ��s�x��Ɂ�U�"�C�yژ�Y��F�
��\�#	 ��i�Pd�*� �����n��i��\395`��㝜C"QC�O�`B�]�\C吀 �"2��ã�s�-\xj	1H�p���0*LI�P�A`  '�N�	^~��-���s~�x#��c������!a�H�H�>>��������uP�h��X�wyP4�4���x�*6&�2&����O"E���y�=�ʟ�- �pm��l����Q�}�����S`�V�K��}M��K�V
���(��B� ���@����,1e�ã�R� �NN�-8J�:�O�����9(��C;��΃�J�ȷ����Y�@GA�v(p�O������4�4�@D`���2DDA�
i-$:��Ob|���t����� ���B!^��h3`D
����&�$T�g�6S ���G����:1M :6 <	6)21yxB<"-�]$����
�W���p��X�a,�t 5�0�##'#MD��"��T`����O�� 	""~ȓ)Ȇ�4��9?�Wx�&�6��}�Nl�OJߏ��?�E��P(:1��}@�<�1+dE��fg5�v�Xv_�+��3\�os�R$Bρ�S�
ɸ����vQ c��2;�HH���LS�:�t�3�q.`�%AD�C�E,t�R�@�����:�l�)�G�j
��m������U��A b�� ��0��v�$��'G�K����I�=�H8I$!E�,��f�˨��!�Q		H����A8�0H�nEQ���lI$,������-��	Q �3G�>1�ؼG�

<.#
`6J�2���t�Dl�!C�a@���4I0�@� 0 �`�`(����G'��8�%NüH��!K�5r@��&��)���N������4��Ӡ�q��KRM�-���I󧼆��~��'����/���@D ����c����s���� ��6���&Q�t^��\@I��s�ޠ������	 �=��"n��	R�ҡ��:=�0  ��`Z$i2�A�1+]*h)c���f�y�t�C�e�� � 1�3����h ǵui`f�y�y,ڤ�O���.6�4hs�=j0T�3��B�K�zX���@��[t�H�#(H8�k&�`���+�J�n0% "YB5 �L��1��1�P$��$(@" c4��"P`L�� %�����"RE�Ƃ�� JbDΜ9cz0W�p7c^d�9�����0�@=�TL�u� ��Aa82� :u
�賉� C< x 
 L���q���?��W�F��\��
#�x 덠()��VĈ��ƣn���` 樣ݣg�ծ�?�wW�1o�G�%G+4�g�H�h
@N$� �i$P0*����4iv0Ѩ�q�+c���b�u>��fQ���"�e�>6rr�)6�F�̾,0;�ǟp�&�/�qg�@*@Fk���w?}�c1X������'w{,s�).#`l2�]��f"HFx�'B��a��"*�ӧJåÏӡG�lP([(Hn��b�q�Cӿ̳��9	ó��Θ2�5�AJ�:.13ܝ�o !<5TR^�ɑ�a��Ӈ��a�S��	�L^d�Cބ��HQ�ݪ1��1"��bi���KԌt 
nr�	j,KśIv����`��9L��4��`�Ez/�I�԰ ���|7�@����nٿC��#�(��xa����	���,y���ȍ������I�ȓ�zڍ=ʞ�`�^z��]�����B��;@�-͛s����{xE�N��������a�S�L��E F|�d   ( �3��9M�7&���|~��\c�},�l�����u&AdI�"ɫxh���1h ЊlN��7�����D`���"�F��\���3'�(}.3{�~Sq�h�0�,��+��'��@�YF�
�Chl@٥�>Y��@�F�q�xw���QnG%V 4���ǒ9�A����q?k���{�8^廔��q9��3��g��2�g0��0F���<��8 �$��	1�-�KTx�STR80@E@̤M�F$&X�D�X�]N�bRMN�$ی�<'Y8�3���Ͼ1n�l��`�#��M����yٟM�=^`��U}��\������'�w���g��W� ��޾�~�w��,O��H^7�;��JI	 D<*'� 3��|�� � �(#4�����鯭Ezܐ��7bJ?s���z�N����+�� �%0�.Jd#=5�q��( 0\����������!Kpn���#ԸF�Sl���(f�{�� Yf�1��Ӻŷ�� �[���m:�R� �(�)��y8T���%�3�[�7�
�O�%�a�
����N���g�+�љ�c�<j$�
ĵ��2D�
!������]�gش�#���d�q��ba˘<u�h"�bQp�Kt��Ӈr�H�T!����|��t�� <�F3t� �b6Ohh����!����@�c�q�9�,��8G��b�AJ,@QI���X4YD��$������D���~�v�11Q��g�����cß^d6(A%aִ@���{�A�cӄ�{h^3YX0��C
�=�M���C�7��>�� ��ӽG���I��Œ
(��'1bBH(a�l� ��
�cr7=ޥ�O�1tڸ`�di���L��9���ѧL�6&�al��8�] ��r &I��15
 `��N 1��o��Il�g��JH�"{����Y�/�ͧY��%f�iܠ@D�l�jJ6��Si�)Pb!� ���8�FϘwa $*di1F`3���y�[��UR��'ϔ�܅������)�0&t(2�e��"���A� ��� ��@��-S<5[�h���"p7��*�H$�a�\�' �D�<]$�u,.t��|�����U}R��?��Ғ"*-\����m�����R��7��0a��)�^�U!O� 摾�J `�#�)���הl�@Ƙ
�Arڌ�����^~���G��!�G���a���(�@�0@ *��e�U^��d�H�a&�h�!��m40>.60Y&iA�c���� op�u�46�`pXp}�Y�&���>�G��F�� &`���C��@���c��� I����i��mj:��Q4��'��CR�� ������Rg
�@�	]xa(C��(�]�)b#ࢱ��<�p�Q1Ae�,�3: R�p@ #š�t �ȒȀ5nq@G�E�,9���0�d��$��f�(QƤO�
9L:�D�`����d޽�?���~�Q�B"k��ə��d����ej���%M���_��<(�x� �<u���@z�I��D���;��|+��].��a��Z��$��|��b�?�ـHFP�A0D�!�A��UE>�%Be���b�.}�p	ᬲA���� :���e����aq�(��u���d��3N�6P�C���	��s��s���K�6S(�a�c1��8E����5�!����l��q�y6-�f��S����B���� V���=N�haRG!��G����,�1.��r�2Y|*/q������D�lr�9�px�"g D F��99L"H8�#�3�3�&�9�S<)0�@0@�]L6I�A��p�5ЭE�4�>H��Wj�~ק�I�;.56
�ViI!�����,O���� !�@�A � yLS�� *��0��z��Mݯ��)�%`Q<DI�b)8G�.o�?r;?�2-@D 	$(�  �� E� �؜&�ӬCР��2�O�<��ȓg�>�L��mi����6��9[�I�P�H�  �k�� pT(�/�����O�q���cS���tn����6I*��K��0I��ENp��2y"�PѡH�@��\? �;�y����CD�	&�8�#�
� Ƣ���y�a`��������%z�R"�[`"�h��I���H p@���x�� ����c�訙㸋
p��,�8�sR�cA�	�(�Ч#��#	qI��L]�7�QedU��D`� A�6&���Z�m�|��H�Hs+d��� � @<k��E` J�����,�����qԔdD,�D� D��z�ONF bptA
A(��D���  �̱L�=��I�:=8*k�!H<&X�&�] ר�D�@��q�a�`�F�&&�J��
P�����i�Q���:�S��6��B��t��ԉ�̂b��q/�}��h�E���#FRGa���a�:�r����FM�{
���3}��-.!Y�0G5�x��8�e�70ؠƄe���t��#b����y�%~H�<K��0 ������P�6�Jd���h�`�3�# �0@��b�N�V�4(���p�d�!쪳���< &@�D�! A�(��,/1ǧC!s+<����Z�9�u&,J�����oQң��&� B�EF�E�0-
�-.0�  aA���E�   ={\b  � �8��iQbA�J�&1o1CD��8O�$s����e&����a��
]Z f�b�9J@�� `$�p��ls�W�b�=LB�X�D"ɰM�L�ABH����U*a��i$>M����G��gFR(��3���|��������C�LHQQ8f�M ����0!��B�p�`�3��ƈ,�h���m��9a�2 9� ���C�A�8�%���FV����KX
F�t)pA�v�ĤC�&ev1@�3�
&K
%&�����p
N�""@�9�o�*�����.ur@�X�0�a� a �x�͗��D ���������P!�!�A�D9̔�ñ����D  r�����`V��p@�Q�H���Ϙ�G�MƘ���Yl�y�)"6i���EBC�pQ!�q���g��2��8
`J�v 0��(@(3m# `>ɫ,�b�Q<��g�y<�4!1�>/s���~"�$�?�6��ɛ��Gx�2�*3H�0�y���*�9��!� �` "����Qa�F�r_̫��Sa���hTw��&0��ؔ�!W�p�O���d���[0��cdr,�=N�D��:=���	)	<��O�(�C�X@�8f�2��x�������
�y_���T��`����N��[RAV��9�� {ĘX���By�9!:1i"T
�k	16�k�	o2��F'@�����c,\�AN0� B��#�  	�� �_��y-��@�69��8&D��'#R��xD��K"�P!���2Ex��?ҁfU��l� "7)� � �i�$&)f<�a0
I����c��$E�>&+�9��:mt��� ���:��xtH#��;4�B����B P������$ �  � �� 0	����9�,q����C�U�����"y~�.)Fx�khQ���p�&a�
�>.>�P�Q	a`8�{n^����y67,@	�( �� ��:+ ZÓ�]`��L�3Ed��2�,q��ϔ:.?$�*<�����ŷX�"ebw9f�*12� ��QEQ�Ò��0�r��,y��
F��O��7r�DT3P@(�7T?l>O��HB�=�$IҦ�
 �0��n�iOJ�
�  
�镢*��k�o� �#(`� .<7��'	` 	� c��/�K0s E`P��+@ 'I �D���"Ԁ%��:?�;����,�  z��D@ ���*�5F��`�{	(�9O�J��,���r��>7a�>�P<<,�Ӆ  �  �������q $ �(� ( �`$'QyJ@�=Z���E��:�����Dt�\��	�"�j,�� =]:��#B� `f ���r3���P��� J�PE�Sb��� �Թ͘1ct�Yc��].�"#����ED q����1ǵ��H��ʘ
:y >@���!
 0�ea�{���Y�%�6�����#�cjn �" �G��w���6��� b,l#���@xR=����C� �X6H<,���) �$� l���y@,s��H�C�d�����A=j�Y !��	�*� Z$	`!�"�ʱm Q���S|O�;��� ��H ��H(�5���ʏ�2�Xg�s $)v ��J
���D��㸬�� �>���(3^c2,@h�g� �_��^"5f��MC� ���\����q7[|���s�Q�� b�M�9�K  
£G� �:=
���C�)!��=4E����r��0����o��|����h`, $k��L�J��o�}��C�˔��b"* 2����X��ا��	��lc`�%b��<�ST  �@`� �1#�$n��z>�~O ��Q5sS��bNU��2�Q@$ �кpyD�e�o�1�ᠠ�'K�'WQ�*1
! �@�I��qI����_��3�+ �\����������P�#ҐQ3ۍ(LBQBQs�T� P  �2eJ"��HD:l�E?���>�pN� P`�ܬ� ��N:����>��PYgE�"FP &F#�>s��b�a:l1�'��4��p�\`L � ���tY��}��W���� h��%�¡�1�Cy��TH�K�|2��l (�H�I��Ce����a$� �$���@�b������N�X������	�\��V� Pҋf�Y c$�[�< �B�[4�!�2�G��C! e�׹��!Y
���!e
�,  a@ 	�`��l�ا��GP��B�$r�Q��ᐖ!B0�>m|TQف�%��D�i�a��m�  �[����N�b�G  �@"`��hHb"�>)Z|�o2��� ^sq xq�>b�=@�����7����@dT�z�tp��(��g/��E ,!��-4���`��C(��|!y?J@Q �C 0��E �K�U��G��e�F������ҡ�v�F�C�*C�,p?T�DL�xf<�0@H0�FN`�5<�8�/�:~�ϓHT(`��` p
��qx�ޢH�� ���+�`f�@��!�"�	�	%"#�:]�8N�=6 42P ���<m�E~��0���v��W�:�����ADU�%~���L �<�u��hS�%��Py�'cp���H�m.����"������
�8g�)9`�@�۔������{8�ͨ�(��ÀC�qqp
&�%�O���M�	� �.E��O�9BI\J4�@�8 �M�t��� H"F����|���/��ph$+ךOeD��P��7�C.(�u)��(��+0�2�@3&��j�%%����JlѰː�\��x����0	� 1@� }r &�lؼC�"���*��6;D4pA��>I�p�;)��E�xp;  �  ��vi�$J"9��|'����D`�  0  D($����q�c�p��c��l�(	^!0A����$���%�6Y����pf�r�G���y�_�4�8�a�����5^̿�(���x�)q�  ���K4�'�*�&G`�9$K�Ybx41M��',as�硼N�1<!)5F$�ԀQH � R <	  $���O/~�?�x
D�X t68O��$P b*�yva�$)���$*��� g��S"�$}�F7!�x����
G�  $�RáP�� �M��]�z~?��Ce㹚 �j���M���pt��o�)O�$�avO�(��T��L% $P[08�.ۏ����+3~��W��K�+�`�4�H�Bj�t\�Da�%�i#���B�!�l�ħΓ��!� 9�(t��a0�f0�'��{9  `&R��]�ӨAY�����*��G����������DD �I.�"M�Q����/��49f�,W�8H �GL�-��0bl�f$Ǉ�Y�Y"��t	��(=$%) 4�]�$*~�>5�LY'Jx=�%��=�J�k��X�Eh��,g0"Uf���+�1249&k.�Ŧ�O@���a��d�ǧ�Wy��:&c�9`���Y�d���&�Hp�! E�>�����I��ET�1<k����i� D��$�_���h�x���/�C9G�Q��@�B��]]� zo����H$�P!�
��H�o���3���2Vv�<{��/򫜥��*�%�0B�f?33'%j�u`&f5<U)c�Gb��̛�/��o�wh��{�f�S~'h���i��f�] <u:dH8����N�0ѡ@�+�/s�wX�� !d�# ������0TD,��S ��ik���ߣ�L��0�H�(B�\��<%�|�
*��48��ڮB�-"�R�.L
<����L7�����?��Nc�3Cn��7�[�����ǳ�1������ @×@��:<	_0��S2bN$3��EX��7��1K���x�<� 1�S��؜r���|���0y�g8�q�W���u<G�D1�t��|��[0�sj�`@��T8��`@�b��}�DM"#�9f�_�?f�_s�=׸�9ŭ��L�ң��
���D������&�؀�h�����ݖ�KQb���G�EΠ2A�{�n ;���[v�aQk�PG�HB3`��6C�3D��Z+N |�?�7�yń-�Ӑ<L�1tDaY	�������=�|#�G� !AR8�u
�$`�����Q� gG�"<� �J%A���!ʬ�o̍�D2���6�0Y��6���O����!c��-U(�G��u.�>9NXa�Θ�e��G�>�W��%�06�V��@0B�{G��=sDq8�ƆYG�&@Id0�
6:YDc&`$<yd�#�B�E������ޤo�͟�O�#(��8�#J��(���A!��6�j�(Px�K"{ ���%:�`	X:6w��g���#��@�C$f��$�,c��Gd(��#! �=d�Y�c@"�(�4�	�'���x"�$��H ��!0A! (s,�a~���u��O$��_�Ek����d�a�GQ�Ǔ��r^Ӑ��o�o�z�\D~�#3`��O5`�g���l����F�6O�L��8?����z�-|����_�e*F%s݀f��²ł��?�;�wp� �Ð��� �� 	��iTV^����|O�q��$C�V!�h�D� �DB����@�b��4AX,B�aL�ŵ΀!> C �ۘԨ��	�M�[� �<��M<z`j�>�ub��� )	�� $��Q��U` �0�(�B`�%��,)��a�!1�
6' شPȲ�����
2�PB��L�r��Q։�r��	%a@�@	�!H�(�BE%�l��8~����Xl���HX�y;\��c��dJHH��,����Ƅ*o���HJ��H�<�1)�*,��S!XJ���I�" LD1A0�b�p]{~��r1�W��K��~��/a�U,���a�t����3�c	3�D �`�h��C�DH2�2L�<uFp18ė����9����u�ȯr�D��W�((@�0S��� <���a�2�&�$� &$"� @� ^��>�%����B$	��a8$!@@ � �J�$@�b�0�R:�����`�)�(<)�1fH��GlB9��I�}nq�	6��C�rF�**o��"�1�$�@�6�"�B��`0��� VL��=��X�9@Q��!�T�d�)�L @F���%K�e2�H�!L1٢���{8f�"!(Lı��"d( �K��X���AmJ�EP"J"�D��A�`F"�#K��Ch(0 
}d��2�!A�$�H(3�@�aJ���a �X� �!P`<JA ,C�8r��/�y����Z;��
���-�4������y��C^4��T}R�EFZ���ƓX��.!@��a��J���n���+��yu�;Ab��D�K�jj��D�55�H�3������4d
0x` �(�#_���G�B�@8"qv�0  I�   4 0
 �+; �e�F"�lq�C L��1�6!9x:8���@��L�O�<�<ġ@L�M||6("��s�a�C�H`1
�@�`X�%���t �"x
&8�`�e�"�0$*�"�t�Qp��g
�ʐ>cr\�2d ���l6��b��  dV
�`I�(�F�+DV�'��s���w3�.aP�C��X���_����l�C0�&a�*�1>�L@d�"A�hsQ� ��`Ct��%�K$� Ċ�Bd�j+`� ����r7��_s�v�F���*���0S�n l�����j��uc&3���$����=�!.&�c�{���*���ໟ~�b��xت������ݫ��?�	���`� (W(�znS�IC������� �48J�)9��( �_�����>���R �� �h�� �p�A-Fr=�4C�@ �I�ǒ��Y`S`H4��� �,��ŀm��&eB��H�*_�Έ�ܡA�� Tb��3Ă���	
�CA���(`BB<@� �<�.�}EQBb�!g��k4�P�dʈ)�/�MF@c3�'@�e���& �0:\g��0d�ݬ�4��`a:�`L �� @��E�E��yp���'ደr��2l�q�e�o��I�R�X` E 2��J� ��!#"�r�cְ�l3�����'D"	AQ�!rJK�`	����m�=v��d��f��b��;!�5�2)���G̿˱J���9&f�]�9�J�N��H@�G�3�AjtAd�yK��c��DͭJ�w�7�v���cPZ05	 � �Ғ��h�ӐXc�o�A������` �(1���,��ŗ����!'^A�$q����a I1�2��� @�!Db8�X<�9�XЇY}xD@
�|��L(a�a����@IALȂ��_�:wx���$H@�����2�*m\8(	 !����@R�;a���0d�)� +���aqD�!K��H�C�2!��aP�rN��.3䐔| H�yz|�SpK8CM@ �� c`U
�$@4�S  �NĒ������]E��iH 
	ű�)���L���C��@'����e�$Tx���O&o�&0D��"%C(���,�� !AXZ�`���1(Sz�zd��c����kY�b�e�(O���r(Ɖ�9�+�=l���$�r�J�!��Xd�D�%pV� D`���y�Ɠ-*�nf:eA���q@��3�#�k|�#�y�$� �-~��'��37|O�o!��O��!�� p�F� ��CD"�� �06��D$UKK��\!� ,F��kK��X<C���&���M<ƣ�DE������@�>7p�Y���]b���1"1@DCF�`��� `e/�;d�0c0@9����3b�(_G�@��� �\"�[P6�ИcH�	�*�h��b�O���ns?�C��H(B"�!���# �p��<�ME����1����DKF�R0�n������,uH��c�sxJ��Qq�z��� ���2	y�4�2��4,`A�8<D$ =� ���!%B�)9$�FɜK���c�䘟��O��Kz0d�>�Vɑ�0Ю�H�b ����A���A�,M6��ˋr��,���P�R[~��n�[�%���B"�l �8<5G�)���Ο�/� Bca:>����I��m|�Ʒb������E$	!@1@ l8�q6D"q�b2�p�aʂ�M>��D�� TK��>wY�6����>�:Ǭ�%�"d�,C��r����[�R�G��\�a��1��h1����
#�B1QaDP�L�8�����@�3àx2j�x�����G�2�3�)��(sF�:12��	E�T�RS�k܂'@g�7)p���n��x��� BANG�0�
�n��L�HXjS ����M�v���9w���TdӒHd̒�ΰ 1�#�ȸ������]4��Ac�����7Ṍ���@�T���x�k(,i����i`���8�d��CD�� �0d$�H���$��@M�5)��G��!�9��O�'�(Yg��Ér$����2�=���]n[����n���0O����@ 8 p�� � ��~�}N����@���Bu�t(%�C�# ,kt�-���u��'�G�${�8�C���#$p
A2���`�`��1�=�P����ΊH� 	�8	�� ��q t�O��e�U�UEy�LF"�g�SBJh�*��`��6-��a���8�D��
��9e����#*$�@� �����@�X�  a����@Đ�(�(̂'�EÐ	@��2���9L<lrH�d`,�C�	˴�h�(����d
�𴴌�؇p ���B NL�R�ɹd>��u$#4��d7:�t����/rg��s�c$$ "�cb�̃x��u��<f`
���
� �g9�6�q�9-�VJW���"
� �p�DC A�Z<��`"��ObW`�a	* ;�X(�Q���WN�,>���&C >�s��d�
,��B=�}�����e��$�l  (� � !b`��s�����������yЃh)�9Q_'�c�1��F�X0:������"H ���J,!!�I� #� �!@ ���a����$O��$�ɒp��:&1�S\>�?��p��qD������� B   Q
 8���`�G�QVLBTlp���@�(&�D\��2"��F��<&C$r� � �0�<���@`nÌH(-	�aE-����KL����ca��	9�Z�q�l�%a/Ē<;��P�\���KK�g�D���,	2]8D��>:�X���a��ƈ5���4C�>ka �@D"a�=:+J� ��@���n�( �C��`( B��.ݲI?��IR�C��f�MT��T��,Y�I0E�f��%c���|��_`�eA A(C(�B�!����a��%�@"0q���82�b��p��S �:	`h
A� ސ� D"��i�hQ�8�t4D �*g�dP�h2K�=��9(��a�*�!�F��Ǆ�.�x�[�Lx�3(�<3�'�!a0 �A ָI��(���p�3"=Z�(A��cF�  FA�CH�(3�����GG�E��M�eL ��0B�� 0d�a��6��p@��0 $	��@y�� V���s�����n3p�(����Ӝd����MF��21Sz(���	ЇCBf���p Ed�,>ylj<�;\d�K:r�_)�b " D<�b Bd(
 � @ b��(�����"$h#���& ލ!l���K &��TP�ɠ�i��Ĥ0�.P� �}���|Kƀ0S7
��� `	�1���A)�t$���h�a@GR8P ���J����Qx�8!��!��8��H"��A��{Da�q,�� ��1  ��	���*6	
.���DL��2��3t*`�T�H�|�<�_�*
|���C�}$f�� 0�#�D�;|������>-!"G�y���#�J� i=�*�)!0&C� ���C\cLr"9����y�sDe�EQ  �@��<��Au����2���{h�F㏁���r-9#���1�3G�K��D�CL��"	>r\àC�I�,M�d(��&�aC̀-nrG�1A(�H�Q���  �	BI6ND @B 
�%!����ݓ�v*��OJ/9�h�	Q����r��<� ��Y����v�H�}�ޔ�=6� *zD@0�� `5�=J���"
s9�D��!a�m@c��\6g%�I
� @��l���8��!��`�'�chiHd�d ����x���cS_�c�H�<z �:Aa��b���E|J�0H8�c��G��U&Xdp� ��P  �`0��O��!�����2DQ �(��h�N�cI	��H!`bxD|0FD
Cā���"y�	(�a2��:��a�r�5�m}*�"(��`�g��E~�����G��湰Z�n:,��L ٌ�#�H˂%}j2���� �@�<J�� 5&D�g�, "3&C�G$��x;ϳ�B��� ��!!"��	�@@!��XF� � `�(��	�B$#!`0#�&N����E/m$	04i3�k\���̧lŇh|r|\�?��� � �!E � �`X'���0CjOD�Hv6��R�4%@�8A ��QYpI�$HD��I@ 0� BfE,�� B	A�.�@�%����í�	�A+=9l"8� ��hr�;�d��e�������	B
���H�� `ɰX���5�[X`!� £   	�H��(`x �G�� b(5�'�9g���%-J��nB�z�,�HD��0�˜���c�de�"�
O"],DBD�@L!<9}�HG�!�!�'�b"���ȔmxL0Sޡ��r�
%�q��\�p�u&1��0 �0L�Q�� @(�� � 2d Ӓ��Y�@� C��)����@`�a����k��#;y�%"`A K��)��{���|;x����d�����0D E��$"��H�8��P�><-��$%�a�  �� p#萕��P�!� !�(A �����P��Y;!Q�%������h��(ذG^^d��h�Cx*t���T8��^'�|�'`�6�03GD�S���r�a�P@@ h�<cih00���&gʀekw�
 �1%}:G���  DbLB:<6!2
����c���l@�<¾�͈�9���>�[(^�q$�I$T5C�-���i���j�Ĕ^SSR��:!Z"�}&�D΀��X�pL1P�x@,lTDTL�)g FTLb�և�%����#
[p���H%
C(��5&!X�"( ��3��,��Ch�dm��q4��aQ�2!
P�R'����O������^��	���E�/p��������~����|ù�k}j9��P 0�QC@IBGC��&� P�3jZ�Lf<�]^`8��`�JC����@�F焱V���i ��( /�$ L">#Z#��,}"�C%�00e.Srg�t��㣷�Q� 0E�Q&eJ����]sp��6r��3|�"�� �+{���h���#�����@(��j�0XĐƒq@N$ߥ���D� ,��Epx: < � %@"!��pp�����)t��T�S��4�X���/iK쾞�l�,"��r
�+�`2�cRӄ�4@M�aj��EPDbc�6-D�Qr*:��@&`��J
 ���@D T�
(T'|���!�����1h߄�����6Ss��"ci$��*߭��	%�dSc(f�g<�����jۉW��0B�3*�A��*�j��f~�NJ���g/��m���X����~�z��bq���L^�h�;g~��"t��}r�3�DO`��4b�:�C	�  � ��` �2-	� >s��j�$�4@e%�E^K�I:ĩT��: b8�!��2i���/�0*	�y��kH�RS1�hD(dH-G�K� ` 00�2��$�B�Pc��s���W���!��K�6��\�'1�� `@�d��.�! ��D�&о cZ�� ���a �� (J�� tM�!`B8\>FF�B���0��4�S� 5שa��A0�5  g@B�(BG`C �Ó� r�	� , "@!(	�B�0 ̐D�å�7�Ĳj�Kl3�HOϹ�k?����pd�m/'�(D����0��a& @`̨`�DDqX��̨`< �oE DF����	9z0$Q��7��8���H^u�E���<e�)1��g����y�c��aJ{2 <VKϳ���Pg @�h !h��� V[ �R�X|�  "HC	0��DBFw�3�C b!�F `8�lt�[�P���t���� �H`p0bD
��` D�lS�cH<&e	�L�����ʉlE�#� �$��[93j@b@ bp0����` ��@(#0 �\	*�@�C�yx&�����G�B��(�9����$� B�b ơ�t0A(	��i�d���q(�G���A0 ��`0 H��c@�9F�� lθ�>�� S����K �A�� (	AP����<@Hc0(-�'Qa`��`����>�<1�#s��8Q�]�t�AL�kR�$Dr��GˋztM+�$po��dJ$�.���1( (  �&!a�$�U�3��w	A �@� �q"IAm"D� ȠA$ $ �:�0B��W!	I��G�>k�Q@`a�@A 
��`  <��2 r�0��� N1��A��P0�Ba0v�?�CfX,��
+^/ DF�A�  C!@x0����H����@F�@�"E��$

/��g��	=�#��	�q0P�T�� &"(b%	Kc������Aq$ $!$$E � 0�H@O� �&y�6��&i�8s�n�:j��GA��Q9PEP@�@�:K�� �0�=
E	2  ��P6�e1Ƅ��r��*���[\��部P��I���t�fɟ�>�'�� j��-�z�;]�ΆN�i2�DEQ�$
 �� 
 x�� �(�@ (
aH�<� !D@2, �A�@#�"@�5)0 )pj�L�E!H�P F� )��$"�`    q@�,U"�PX��,�\Pd�6T,d$ 6�@ d��0�`1�ât�	0F ��0( ���@�+E%������̉x�*G�P�.�`@�&��	�M2��
q� \	��A(��� ����`P a0�R���@D!�a0�GŐ���(�px��	�>�&g�Z#d�qLTA2� �1 �����tD,9LGKGN般��J:f8F5���8]?������N����5Zz��A�K��AF �X�?�?��'����6�v�mvuD�a"��� �X	E$����)P"GIa`I!��"I��� �  ��  ����R��T̨<	��Q"�Ñ��`)H�'���a0$�q����Cf)1%K��ǘKdA��BI��@
 �����	��I40��
AC���C�@���P<���A��� 8�\d�"E�cb��P�.#���		8V�B�Ӧ
FP����Qj�H��AD^�@�� < �@aPD	��	->��TXbD���H�s�P���Ɍ�(���
�0��� ��HBI$,��!� 
K���~�)�F�<*���I
F���&�	Ȣ��E�!��l�?�O8o_÷q?Q���)m]'�E� � Dd&"�'%���@ �Q,�!�(
!DBĂ 	�$��d��B Ib�+�		���=��)$����g�����D��� �@x������  � T(�o��`�!�e�H$�8�J 
�A P İI�%<�ʢC�	$�00 � Xe�Ka`x1�B�Q!���&O�Mֱ0qfƜ)3Pay;�},��a �  �	�hQ��`00%�$
�B �� A!@ ��G&F�$�	�S�EgJ�M����.N�,郚���ID|� AH��!��t(D BX����(BBP։(���a��ہ4� ��Q�8�h���Kl�� 1i�\&����<���<H�6��3���0x�S �h ��( �շ�a�  ��!��F� Ar�H  A �x�kA$�BGA�8@�8��OKCKK�W�A ��! ! 8
����d������P`�$���/�d��T��Y����&�!�P�9`Ӣ:�-��y�D$"PV*$@ x�L�#����"�,2�2��) :���q�.r���05@P�`,�Q��H48<
��8X"ƑQ"��H ���` `�@J�� �b��H����|�)FX&,9a-�~v>���a��@�Htt��(-�#�
r��D� ���M�a�N��׽EYd��r�A�R�@�h�YV��KXR��]0Y�dt�D^S<D��PSc��`�3�����b5�� $1� ���H�D$  B @2� @"Ƭ"�a�$�^�pa��J����8,JM��QS�#��I`�L(��#Rf�2�)14&��@� ��(����G�|
������F&�w�^<]�O��=���1�ÄB��o<�"��e�s&zL�(-LG��AD���H�����I	�(P<ԫ���OB�11��
W(��}��8M�)�Ș�|�-�қ�ڎ�������QB:�X!GY�q�9:��#q�G`"s֨� �2��J�%!d�=T, ��	O���'8�儻M��sȌ��s绋��q�C��Г��%��D��v*"%}�%��D"��rp��%��c��w֟��  �@`n�6N�B����<��eb��!$9�"��F-���$��Nk�����K�Y��O�n�q@��� C �(	� $"��@0� *#H�);�;:��8��R�\萠aT���d'��E\�q�pą3d%(|����$�%�8 �bpx,� �@� D 4\�,��O�	�5�X� )=�\���}8�x̓�E!d�Uj\�1��s��$��&QP :̒H�>LK�"0�E0�`�H���GG�E� `��̰�{W�� B��`�Xe�%_��NTl�g����K�U_���1>�r:v�0!�p�x�hP��cQE  ���� @��d���C��(@y�9�)�b2F�a ��\Ť������v�W�&�C|3%?ί�1`�ڿP� E5C�A(�9-G,��0��� �X�I��,��q.��N�E@` �PaT0 ���D=ޟ����0a�[��3�bU� 0bh�H �]'��Y@y�w,�DCG	�&-�b ����a���qG�B  FB1� 	!�!  �'�N"�Dr@$�P �H@tH�_�a G40�#�a1 � �@()%"R8)���p�� ���-�с�H������6��Ra�=>��Y�1&;|�� �,�5~���>wiB1�x:fD��1# �@�(�0�!    !����` 1�,	
��+���;��$Dg�࠲A�*Op�����1��o�����`g�$����
�l`�3#�q�(B�-�JN��8���!��� HH@R

}fx�_�<&	
��(2�>>3�t̷��1�آ�i��}��4��7�m�9O����bhi`���}{Ă�52��0LBa�K��F�tl���c���z���>	 �  ��P
Lh��� �.k�Y�q ���HFQ���V�)H���lM�Gð�K�'�`
&8V�e������P � �"  eu	��b0�B h8��e���J}�N$� �HHŰ+R(��aaH�� 
EƂ#fD��?�@=��M���%�D�
B��Ȼ� V�G�M��p
HM���v�{����.or��@�Ò)��XV�#�$�G�A�ቡh����x�?�gP�Q����P"��!�#A�� @�	�� b��M<X���@���Q�w�>�yN���[<���c�8���q#��(� 	��Y��H�K�1]\�T�n����@�#"�b����2Ģ�&_��\o����[����9�7��aN�E��%��"=�4�(a*�X�8D�b�)��aa��]�S���Q�L��G��|���� @?t�x��!��E�P;�W��=�A�Q�F�D�
�  )�x&1%����.2����y!��T��j�%:�P �EH$� V  ` 1!A c�:"�!�
��qCgG8Bt: �΁ �I��� ��t$�@��G<e0�d��	�>�˔ y��NHm����c� �c�3 �(1��|�G$��-^�-�0 �� ��$ 0��Ǹ��W�,�������Qj��
!�(�� d88Tx\<��g�,��  �྿�����@��  kH$Dl � ��X���l�\4�jO��  ����w0��<�y���q���1B�B � 0�&��� �a�D� 2|��! ���8�k�Q@� 0<yZ��T���!�U�'g�&�_cǧ4=�H;��f����ls��s�O�Q�^.�ϐS�4X,���q4���:K��,��8�=�)��ۙe[1�o��GfQ�Y1��OB��o��m,V���`���$D��$�����s���{�$?ķ��/�~Ƚ�O�>�� �I͒���hp %�(� �   
  X���V :;	�a�?��0^4:� V ��#�$�0d0% )�A�b5�!�B��j}" �@��{��'���=?�K<πGL�s�g�s��¡`s��& �� �� 8 ���޻σ=�����%J �X���B   � O�M��O��@���~�������CE �
"�9t g�!�/�ҧ�-����?��d���щSV��a2��޼U�ˋ<�|�[Qa��)�@�cQ�� �� `�
	���| �䮊9����_!$`J�I��PG�#�c�05��-l{;?��DJ�j	3Rw��=ˣ���"[�}���U�PJS��"Qr����0D�B��ha2<J`��<��O� CK[2 1� |�����W�<�e�A�`8�  �t��	"9ݻ%�����_2�(ƻ��a�m߻�=>��5�P��ҡX<�� �+�@$� �� N���!  B$I��0�b��!B��J�X �0�6:Ah�Y'�b`1�@ $B2����� ��  =�����á@@1�E�Q���̐�c�"���b   � 0    �<����F�˃�R���-^☂5s!J�B � �F��Xd�%�=����   �;8o��?�
�(d1@�`��sΣ<�S<ȽTL9����7on�}���ӉvT��,��2��zT'�����#?_��4_�9f�04���X"��@  ����@��R�l> �ϡ�{ 2	1	%B|
"�����n��W%a��TQP��&G��ȿ���{�=���<s�KA���cB��I��#�)�0�����}L����c�����{���͏"6@n	��X԰b�f��F���IL`z}7�V�B
?�b��IF�]���}����E���Cx2 � C����	1 yþXv
��  � �  �h|Ja�B�TDyŉB'p�b1���P2FQQT � G���/���������<ߕT� ��%[����=�uP9��-&Ly�&����<
h F " `Ĉ�
��IF E�.؋����=7�(��ls����I,++D�����Ŧ�&�$.��${�<�G��g=�2&y��Qh��1䅦|�9K�-��6`9]zz�A�V�4p�v%is��*��Hk�����V����|�/6���������-
��"&N��q��E y��9Oʗ��44r������B���48f�A��Q!/
�$'��֦��.Qo�߼7����6�H�[ �K �R{r�����͜�|�_�Us��
`��)�H�� �CX����̐����{�A~�G
@��o��-�N�a(L8;��B8���4!f�6 2��+x-����  ��u~��5���'0��������%J"���>�E��7�=9��@� �CC$�. �!�NB
!�s��ҙD�D� 2g��ѰDqB��i�@�����������Ǌ � �@���/�$C=N�C�.�b�#4��N�Q�   �  !A T �� "#�E] `���e�ķv��� }#�c���P�Ng����@� �����|�1 �&͟�{��m����p�ł�;���&ܧȄ�  ��  $%u�P�$��n
@�����Fr��X�����A�H����>7��#�"�x�'=��K�,?3���О6���F��?��jn�{�{��awX��!����#6��-��s�=��|���� 
)�� l5+_��}��n�d��������8�,��QF/\�H��0�!aa5"!p�f��=�#���v~-�G����"S��[��1��V��ɱ(�%�����  4a����	 3E@
n�5�pC����s�W���h�5��c���(=�I"Ci��X�  P@�TV.���/�y�w�|9 :!I�cC�p

bTH� �  �d���x��QYh,��*�B˜)5��s����-τ-����0w���rQ��w��= �-|�~�K�3�� UR�ȀX����M `ni?��`� � ��4S��|vjL�T����$�#� I�?����� Pi	Y��&�KA� �N��2�����q�J�Ybn�2)D`   �  p  �işg�M�g�?"����f��[��İ+�}
d�	�ߊ	AE!����8�̟LS��(Y�d%T2�d�?w������\ĳ�#\b���z�s��6 @�4�  (( �$��	N�����C���"��#,��x"�� ��0C0��7
p�,~.���oP�"[GxK  VR ���.�C������>�t���T@��(� ����ݟY���?�Q^Ɣ�.��*�`^ � ��  � ��ht
"FB�~�Sqvnp�V�p!I@�p`�s�^�f����p�S�`
�8
̦ů�DB�5��J� � @%r��'���>P�a���4�� �P n�C�P�  8�T� ����i""+.&1}|�U(S�@��c�`PQR���S���\�����6��E�#^�S ���G�@�   O� 3�e(����1	G�Һ9u�  
�e����ۢO)ۯ+��K�:l�����h��E��z<I���Ԝ�G�ã,��eg �n   \(  �(�B,@����;����X�D,@�$�!�(�`a�`��""�Ӱ��*�l/����� � C��@�(�  �/�+�q��OW  $�  	  RT�\���o����?�U,}�0:�@ �PA!�+��
�C�NpU�pșm��+|'B�H ����|1 ��QӢX"G�)Q��@$ñF����1>��ğ�e��s��A$^��qd丄p��tAXL2��D���( :@��z+@䠒���ן߃� H�_0
N�@�!�nj�L<ſ���8Jj�	09��e�OPr�}n���k�����,t`  �B�@   6��0�O�n?ߌh� �Y�EE��P�"�X�P$<<j�Oː����D�~��ҟ�Pi�Sy�Z�Y����1f�.k4�%�����n�Z�@  !�@�� A	E*)�/�����B~�>�%=*JV��+� ��(BDY�9 ��&c��r� 
��D�BJ��'��:���� �?�P��(  0�aU����=K��`*��xB�+4����X($�4J��=;NX�h� �H�\�O �!��D�;^s��B:g���K"R���p %Anz���8�*��O�gsmn��&#�  	� �Ο����>��p�8�(��Q :�{ A :*@L ] �
Rk�/N�J��~�p8I ���� �h�Η��+|+��EF*f�@ �@NÐ�8���X^O��$�E��Ǹ����r��  0  �#�'�(�
��Ir�!R	��vD��1}��;�;^��c~����G�K��;���}w�Z0�R�|N1Đh�Z  GE 8�-�^0 Gt$�d�Q�F�с�[�ߑ��ёQ���< 0"AQVB��j�C j2 +�N0�" },$=�<��s  Q��R4$�D���+��LX�������\����
ר!`$ P8|��0Ie�* �0�ǹ��qǗ���#b�C
�A�]9s�`f1D��f�c��BX2,b�!�6X��������Q�<FA��b�a΀��1��J��0  �� �[pH��c��" �! �{�H`��KA�@b"0*GX�U��D<]��o�_�$�  :22������X�8�$>�:O� �$�G@`p \(D
C� Vd�0��}�
*<˳p�'���� @ H*���g�>��������^:G� �. ���$N�BC�Ϙu��R�/ݐ<@ $
	 �)���d��(HX'$���F��%��d��4$°2� ��X]�g��c`@��GA�!�@�! @ �&�|-{�S� `�� �	�@  C�  ����S�%�&c�[��`) �B��$��H�h!*�Q�c�!��5n�l���P�	AB�@�x D �|�S) ���0�1����P�dD��S�8��l~��G��_�͚Zr d �Gɹ��r��lс0�!�Q  @n!�~�2G9�}$PQ$ �&_�Uo��>�m"�*D :
S�Є@��hxZj��>���9��|+�Mҙ\H"�b��'���1� �@$F�G�` Ss���@x ��nD��?��g�rE@�It/
����d71�L����ޝ�o�Z<W�T0ԺyV� x����w�/�7��F(�� n��  q��$�a%  ��
Xii"�_���$0����P@0 D C(
 �( ���  :�a��(  � �����|�\�{���A;Η�@��$����T��#� ����u�8/�l ��q��JA0
�@H0+0�8
��0�Rhb$I`\��|� NA�4n!� !�="I !�F��q2�� ��OIIF�:��Q��C�,�1�'����x���@0$
�Ǐr�>eF����4Jo
ͷJ�MF��߱9�G�! ~�mL��M�
��0�%�+�%��P���,Yg̜��/Ԝ�b>�cT��$��w��6n��#Ԉ` 	��� zlq��CL�,r�:2"�x��j.PBPP��ac����(5t
,���x'�I�Gy%- �(�a`�΍�͗Y�[��X@�Y���  � �� �C�?"�S5A{ � )%�����l2��3�C��(���0�`!� d� -	�TT��-���E!�P�`�O�݌�q��G�  ���g�&
'�/[���|��X(  �� z���ח���sd���L�"WX� (
X�V6���2�d�aGt��!"H^":����1
D4:	!C�|ɀC@�p�!DM��9�͘pp�w����fe
�!a���͵˿ǆ�~�m�1ktx"�Đ?Ϗ�e��S���x ��� \��
!Z�E��� ��_�pH�b���.G��3\�ӻu�ϑ����Z�X!����~��_�־ �X�C^dȒ=��[��G< @`0 ���7��g�ap�3����<G<b&j��vR�ih��eqƻG����1�<KHn�AL��  P�d��	<��������μ���<b�6�bX�V~3F @ ����D��w��e���JsW56�Ғ���(Ժ,I8jZ�X�X�-8f��,�Dj���!���0� "ZGO`L�PӠ0B�y�,�lpӔ�r�w� �y�>�5���>T  ��������n�f�:/��H�&%B���x��K<-�!a���4�#�N%  Y8 b���+7���N�,,ȁ����B�t:w��yA���J���f=�J�	��I`
L�ḣ�
����+o���Y��  Đ\Ae��� ��D�  �.o I�%a���6���q.�@$
���n�D�yy��a<p�%rDt �1�gs�_�Ug�/��{`�1o�&��]|;�W/+   �0~�</2a����������a��#�*!*�^�e��$��Y��b�&6i8�@,@���|��<��d!<*Q�=�q�ʓ,�<,b�m��ު�� P����sd'��BA��9|��8���Z�q��� L�)�p���i*�BBp,I<-�r'� � 2<��}����O�a�+����  y$��m��?�.>�p�?�O�QfL���y���g��n�w(�h^��H�D� (L� @�F0��B$��Sq@�	� A� `c��)���à�#�6ΠI��o��x��0�0��>FK�!���51�O�'����%gŴĘGP�4� ����`^�e2X����ݦ
���: @�0x���M�*�̰H�9��N�˥,�
0T�����?���=�*���+<�#�ƭ!�� bT�hr�9 ]80
�6y
���4!ؠ��.�۳���:��u6x�;Xf�@}W ^��@�%�]EE�.�Ǳ\��%@{�I�A@ߞгn�  ,���a��`��|�Lq�>OqW���IP� !�D"� @b��1�:K.@�(�(J�b1$�%#�0B$A�U�`1�b��ӼĈ��@.Hwܼl�1 g��Q�0E�2��8@��g����ϛ�_��d΄�(�y=�c��jj,/"�#DF,�3������@$B���V�c�^� ���=�($P
$� �c
�X�9�f��1V�X�l`1(ϊ�]�G�q ���x�8��1�r�4��p���I��I@Hc��b�Hr�.*�	��� �D $Ɛ`,k4?ӏ�x��s�&�@  ��\e��̡�b�(`�����[I��&*)����0U������,��Gc�&6#A`Ld��
K��R��%��B��� Tȱ�ܭ0$
&1Wf�K$��UT���c�Y0jp�tD��f�M��q\�MK�H�(	�`��!�� �
���g�)��o_�2tw|�ɍwh�-�� +dP����Yb���7�P����}<���̘K��&�ͧ9y�	��G��`�� "H
c�(T0��Z�$  �8�D$B0���c�U@`@-#�Cnq�)wo��g��:�tL�!���Lu�e���B��8��p0��l9`� ��6b��D(�:p�5)�������tLFY��� .�<O���
CS#,h)� p�I� %?
��    �M���C@
�����f�eҍ��a!���y��s�&G����0'n_�y�3"��6��]E�C��˜�az$rHR� ���� ��@��[� $��� �<��G���tAH�P� ! �(�-����C���R�F�A�t �E��!V��t �@N�`0���>�g��t �s��{�
 v^�<Ɖ�f����G�7�P�D`��s�9�-v��-�0��0��9E0�"n�0T�B "���c�`�ZFC@�2�\9H�e��hx6���"��%@Dǈ*��;J�  ��[� bT�%�A�Ƅ�B�R����@�����""|Ҝg�O���%`���]6Q��`,��Ry�|',AX:~ 0(��30xΩabcaB�h㓇�%�`��Xx���0Y��eSl�0���Sg� %�i1"�@�DEbJ�� A1G�����  D,�B4}�H3�R�z�i�Yu�L��g
�Ӱ8��Ȉ�t8�q�>'	LYǰ��̈8"	�c"�!(��*ʌ>-���r�t���u�8�λ�'�m��6B^'���%��M.S�,0D�p�G�I��:f����:7PA1(�p$ �@ 0�z DRIB�A 1��Q!�ʑ�1�c� �".4@� � � �957J�\�Er �2�
��V>S����־�
 u�GLD�	�FF"� X�P� M$#��0ws���@!��Z*���;�/  @��e  �H ܥ�4Z8�(�PL��(7$��@��2�@��5��`R"w��&y� ���]~�L�HX,L�" =��q Äf�ip+*@���.� ͦu�Yf��X�#�� �B}Rd�Б��.%ʌC͈��){�8� ���A�%����V2v�����z�&��[ 7�}�=����"�B�M�|���0��9�*��> ��)"����X��=D*�������P�Bdt8� ~`�% C@��c���z�( :���1� _�B�I���t[D��ֲ��<@c6_�~�8G/[d/!!�`��=Fx(	 �����{��L 
p��d�.��yk�����x`��a~�:#p:�Q�N��Y�;�VfE��4�xЀWi5� ���(  @!P��%R$X<E�dB ����� �T찏K	��t:�H2���0h�n��'S����F��r���ni�i(!<�)B���P�RҦ��  �� �Թ��,�c�y<�L1@��D !y��c����	cnaYg�J��,h�Q�8
f(�0�P� ��#�<�� ����X�ѣ8߭�_}�pߋK�O�<�?RA|�'�_#�_�c!3I�FG/�>N�+<���T�r�?�M���v�2�1X�!��7! �1 ���@��� A�
I:� �HD�$�ș�,,0қ��9jlK�͂�Q��T��{78?����) � ��re�nqV�`  ��n��DC[2��3�E�R`�v�An���7��bT�7FE�C��f�l�y�������O���5�kb���m��0�X�cNd�m���[�VR��  ` 
�o���;����	���쐡B+ӣӤ@q6]�tlv�ޘ����Xao��>��J���$��%�D�	ʋ̙C̖���3<D�
C�2O�k�B�OS�"	2xP~-�q��0�O�	<�`79d�1B� �%Q3,@$*:�2{)�h�-����U�W�
� `} ��6]������A�11�U�7:o@��@�p0 8�Q��"K>�;����X#�����w�o��X,(
�XJ ��� $i�J�H1^�R��!,;����$;!'�8�8`�S�t�H;��C�	&���9&2���}��IB�X-�N���U���X�d(���Ŗ	*
�?O�.�0T� ��i�s�Y4�r��Ob��q0�  CXg�p��Y�IPe��;7s�:B��h4�)X2�0`���}��  "��x�Y0�쓠�S%��L��1+Mb7	�AP(P3� +�6��xd_(=<ƙE�uz  `�e_� (`@�DE�k���܆�ҍn��0y*�lh |4t�P2rr
���'r�:%s��(s��P ��DBa,&����"{�����(�,H ���D`�+���dT�О�u$ڝp����"�]�*��`}��F���lsp��y�5�� ��L���*q�!TKa�"@ �$�`��K�ht:A���0D AH�0W�l8�A��
G�;�.D�#�,C69��p����29�����G� (��(ʌ�ȐS�$_��@a�>o%=��!{v�i���db��c����$��(TXA ���"�u�\��`� ��X7	 Fa��c��i���1�
Gϐ9 {	��I#�`0
����cn��y8��b�$�IJ%D��)� �p�,�*�P�ä�8M��Ƀ�'B�C�a a�haÈ@�sr�,9b��ǋX�B���H$�I$,3�-��oE}*
`y�T�
@��Yb<�Hp�-TzH*B B��Ⱙ��	^OŔS�wq�k�C��;��4�*�g�Id,�B8� $"!������0q��a B��!0��\!*�*��5* `h BU-A(��<G��:G���c�d�I6����� 3�h��C�?t��لЅS��F@�t��|�U��sOF�>���r��Š����4ȃa�s�st �� ��3�0+������d�f@F��K�"W��.WP�@Dpt0U2`j���F�KL��1��r6:���	E9O�p}���
]�t��r/Z� :D�Ts� Zr,������XPb�p�cr�@(JN�#�X,���{�s�jO����ꃕ�� �hTy�$`��P������H\8��CT��>��e��c�.��n>�y��s���$c@���"(� y�CD"��)�" �Na�GT�H 1��q@ 
������HS�``%�q����}��q60(ۜ#"0�@0  ��b����4�����M8U��G�!��.�tx��.�-�P48��540�$�s��6*;�| ( �H0p�0����  �,S�w�Q@�ȤFLY���\`�,3D��=�xH
�@��>#Th�ѧ�ATN y %���V10���8J P%�f�:_�
��f�LD�av��uv�@1:�����p�1X:���+���enF�@��]} čxs=z�NK��� � 	ϝ9� t�� pi�G�I�"´��$�@'B����Qn�Q��I���l"�4���|���	��9~��c7@��"$@$b`���R��� ��T�H�A I��;�+# �K���Yx:�Dv!�#,�@�6��s�,�U��LB��a�S0���_nVh�b�	�f�!����6�$
���}B&��%K�:Y�3�$,�P@$�
@�T��[�@L��@�� �M�� ;���"���8.�Иg'A�UZL �+O� 3�g�i �P��5�8��52���;T�@�1� W�Sh��GEp0G$@��:%��q�L�8E��-�%�F@! b�'�"$�]�����=�Û}���  �A��<Kb���I�\�0�89�4�TاG�" �蒃�<mB��#��C�2D�y;C���/�Y�9�MN�HX J$A��2L��`��8�� ���A�D 
��NR�8�a��@( (��2e�ejn0`�M^Ͻ %�bX���  �k�{���fc�4}�QH��Cc��0��p�-(*�e61�p��(bs�'� c  0	��p��p|ͤ�  �H�ys���	 �rD��iӦ��<�m�!I��Se�.%��9@��0z��<�e�A�\�U0��&�v�܋�>6��$�1P���&�29P��4�A$��"z�\#�r�un�B���<CH0���c ��v)�+�T<��|3��q#��>	P�(l�g|�;PYEr�A�C\�: C`hY&i��}D"x�5�#X>HC�	�G�.9J��!��A �� !��t�S'H ��!`|�Z�\A:���9�YY g>�b!�%>�%�����\���{9	��;�@��<_{����@}�Y$O�2m69����e�Q���4c�p�K��A��GRA�B�!]!N�,`VJ ���!6  B��x��9A"a���Q'��aq�=��J�·���f�S0$$��Y�3�wyPA����X��:0�x��q=�	� g9�إ�A�i�r�c�u"(�P���hP����f�=&<�1�F��%}Ft���(!�,�D`[�s�Z�!��BʼBCΫ\������� &��e����ƅ!!dp (	����#0�m�1�K�0/�:Z��9~��Xj�!��_� ���b�#��RH6�t�$	Hag�X�(�H�+*��(���p|�+P1��B���:9�q��3�)�� 
 @D� � C��C�*> �̓%����ȡth3�2Ib��X�d��<��w��*,Z�E�
-�`�}"Bl!��@	�B���z��  �<5N9��)P�����!'��#܇K�������L�*inc�"�<(@σ��f��D�#�\  �.|n� d�-�����U�XT�X:f@"�<}����q7[�*��x&J$ P@AM� bNǐ�#z��ݿ�o���P �� ���ͳd@\e��=\�!h&���9"ކ#qa�0�gx���Oѧ�:k|�w�2�� w�X&k2Sr�ڥ�C`��8������8�$���".�t�	�,tΈd@�@3*�Q�2G>� �H�`�ӧ�6���J���z��� @²:X1D"��C(  E�"�U$RL�!:���x�!^`��c�*�a�1#P� �2C���# (� ������ɿF��s�eD����abq��ؤ0�v��&1m��F�:%�0p�D��"�Ő0��p\s� p6W�I�MJL�P��d�,�s�]�r#�L��X�g�E�D����e΄%�O �4���Ș�`�K�s.�'�#BF� �8��r�B,$�+Lb Q��1L�,.��|�%\�p��Q:�}�X��G<����_�I䍅�$�bP e� Ȩ%8�I  f�� ��U9Bȧ�+�04	 C"��{\��� �m���D� "�cI	0x�0�� 	�9�]�)I��?.
]�Ѡ��1��w�1P�ҠL���@���o@�N�y�� �%� CN��!���.*F� ����܎�ۤX�Wi�*���oQ�N���1F�E , j,� õ\q�	9�i��F� lҥB�܁J	���0eGd�Qk<H��
BX�@ ���0�%��%@� �����_�6�Fp��3��K4�0�s�\�d�P�x�E�a�"����lr��.�ǒ��p|�o��,X��"� 	F @I(�� ��?�0�D	 ���W�Bd���H����,�I�DJ$����쓱��>�( ��Y�E�(!�<�iN�X�A@�C�UxtL�0Fi0o�A0@`�A�	IB�� 1Lq�T�{T9�� ��5R� ����p����*t�"s�c�0��Kb��%��R��"�:�	hS���9&�<�[` �'��X ȹ�R�DB  �v���0U�� �dA�i|\W9��&D�pD�%��������0��! c��J�Ί;d�!����	������orTRH"zP��$=�T	P���}�dh pHB	��ļ���i'�c���G�INp����P�@@�Q�0�Q:�Ct �`���D"�H
���� @��I*F� �8�c %��9%�0ѷs 0����a!J�K�"/�'y;� ��b �<J��P��d�M�dQ�Q�b�>�TV��r�}B.@h�3O6����a���	#�nv�C�����0��*��cĈ�:h�9�uNr�4mn )0IH�½�W�2Vh ]Ps��<n��(�67�D  0H�6]Ԙ'�54f����b�p��3�1%  BpD
6q/�B�a`�W�X�D"�0+�(5="�#�m�>c�'�lr 0����
�)��0 �C�A"z��3���y�_�g"���|�7����}�����"( bU$� I@A `@ p:�Ɔ��# ��!  ��� �@� �3d@���|�5�@!Vn��!��|��0����d   P ���<��bI�,k�䨳M��Fx�!��0� �1���	 �<1@X �Ȓ�x�)o�^�]'    �c�&}2`(�P�IC�A�0�gI�2H
��`j�9����39P�I�Ȅ|=�$�5 @ nVP��0�6i"V���IL�6#����5"-g :��:-�1� z9 �����Ғ*V#VX,DB��S9�CTB D�@�`8�;����k3��&C�i:"̉4(�A�磼Dz�M�IDV�Z!V~�� �16Ĩ,D�I@�p^� �R �� �-!"� n04�x�GE����`�� `Q@X ����2�u� �C��$E���R�
uzHs�X#�]l���$�c���!�
&M�܍�@A`���B�6_d�7��¼v,�������c�"�1�!EZ�!��ѣ�}(�9�&�d��"�� 8��D�q�{y��^�� 0sub�A $�#g�%���3�E���85�X�0!"��� ��D���q�X0dl1f���� t��0�L�%'�\���D��#�&d	D�X��
>UJh�<��49��tP1��!o�7�ai� +�� A N�H1 �P!Ơ;�$b  r�q�l� ���0�� @HP���n��ap˷�d����M����{��3ai,  B 1d;y����*%���ǀ��.��0 @�Dܪpw�۬�A�YGg������2��a�.*}�����E=j�@�.s~�-��A.�3���Љ�`�Y�!0�p�`B^]�;@��b�?�e,V�c�H�$���n����x��<�;Y�Qnd˔k8�� !��7
^h́�����ݬ0��(��!%-Kv���m6�@܊D$1�1ţ�� ��xY�^�:�!%	 s�@t���GAÐ!��(P�D#��`�1�HB��qYefW�@b�Y`��y��H�<Ξ9ǔ��^�E�y�-~� x�	�`��HB �� ����CD��$�p*  :�	ng��FB �%dx�GQHv
��P�DD�K���K��9y����N�)�> ����f��_���RI_d�&Ǣw�;b0@ 蚿��`��k���t�.�A$ B�}��8i]���Jj��� �}P�c2� T(%0���?�
�t�>�݊��$5��[Xg�U�7Ѐ�k� R8~�_�H�D� ��q�9�f�TX��5\Kw�]�L8�i���L�<�E��Y#�C��o�e^�)�� ��c���gΔ�!klѦ��/yF�8�=�0L�b������ b� v#���Ff��3���N��N������u���R!I���HD�X,�E�"a
b�""B(˸0BT s�#�x:��ktT���@��,�,gJd�a�"'�t�������`H@��à �|�s���:Cr�rB���j:��W�k�m+8��F09� �'��� 0"1��X��3$-������a 
  z��8���	D��R�@@a%�l�X��(��!�A�H�#������asd����C�O���Ͻ��?ɓXJ`���Wip0�U���8�� �?%���RdVv��  
��ã�o]�
$`�)��Q��Un��Y�P.a�RD#�̀��%��q�Ԕ'��m<��g8�'H�&�ߥ!�*	2  �ц�Ȑ�"#2���w)���DL�gp� �C&<�y��%r N�.w�c��9���'=���`o��l�r�9G�%6ٸ�+K��Es4�k>�X@�����u������vE�h��4ǘ��r�fE��`�r��dN�1�Ø*66���!Q�S"�'�ad1(PFEB�w⮺��� 
� �U�"�aQ  E�/J
%�    �Ȉb@�� ����9g�sH�|@D�����@ �(�����<��T��%���1BDQ aIT"� 0
��K7L�a� � E00�"
�"	�00��	&�1A�g��$ָ���	>�X�[��8���P�#�X��>w A �D"��e���q�/��$ �$��x�0�HL�m E�x06�#"!�=��8���%�����=�Wj��Y�g��6�72f�HP�	�g�� ��
�� b`�e�J��À"Ǭ`1�AH�;<���P	0��R�!o����\���8d��x��8,�쐡%�d���XM/tS<��澿�������0�F�B�C�P�|�A�(�c�@)������!e�>mLV�2�0�S�@  ��B$@8��0H(��#@�@ �Rf�*!**���>.2,1%OJ�4��$"�� �/��Er�����K\e�l�D�A
 ���<!A(� cA,%��(�B0L$� ����CP�U�qQك^��F�h&NEw4��8��7l���[l��e�u.��:�� FA�D(`�3�l���=���  � øL�	�`�*!!��	Y�"b�&}ÓG� ��LJ�u� ~H��'#� ��Qv��Sk8n0�$_�<2�M
�@�o<�&�   "�H�������	s0F\��8�:<g8d����%�2E@PY�g�'Ȱ�v�<�m�찍g

E��τ6��?)������7zE�u�I2�R�£C@I�49�6l�	1	&�eb�Tȓe�e*�HY@d�L���a"�2
Z� ��1(�  	 `p   �2�M�*U�H9g�B���Hx8�G�<�x "D�#B(��H2
g�)S����{y7�Y�(
P(� 0�Q�� (@��Jd'(
 �D�0�^�c�&ƅr�2�h��l�����3F9b����FMb�=2� pH�E( _Ĥ� �c��	@  b"()N��:�L	p8�2e��:	{�P���sq(1E�Yv�N�,]0jZNq��|��yv�y�	k0B�׆]�����H��~N�AJR`D�  ��K�c%�F�:#\df�e� �Hy���H % B���� ���)]{�M&Q �#L� � ��D�og�^��7�7>�O�!�M� �P&f�6 �0&Y!`�u��C:txl"5�P�C�)�k�@:1�l2b��aɰ(� 
�4X,!(@�   AaP�   PphS%G���5z@���;�DHp\a�C��px�>޳�:� T8(�<"Y���g��0�qLG &�C��V	�XA �40 ��P��(`���`0�N�5.�"�e��,3�q�� �s�G��DG�S��e�3,�B�
  � [�o�DX(��'>�N� �� �  #Y���!{�@ SD��l�1�S� �,O8�"��<���>�Y�T�l�3cΘ�k�46�����'���A�Ϡ*����Gv ��Y���aq��0Ȳ�Nɀ9��C���)(�s������L���:hӰH(-b1%�=�S:Lh��oS����9���P�h���ae�h��N�D����Ul�x��x �00&b��i2f��rND���plуha�  �r_�@"
���P
�A @0�����	u�TAH�@L��\���O��>_`��.=b4f`�qq( �S��e�P<}\� �R��0( ����`� ` ��
�
!���2��|�I8�,5�N2�!l60��=���~�٣$�ɐW�0(}�
b�1%���M5� @  Be�):2�8D�$�/���L�b����#������1ǔJ�KX��179�If,�^^���LBEb�W���ib��,�`�!��#R�;@fXdJ���&5x����=��#a�>��٢�����,�
�� QV`����y
@F���VY�M��<Y����ڭ�� @ �13gh�rx�	��3q���A� ����Q$a���>} ���t�t G�CV<K8ª�= �� � �G��,3����N�.6# Mf�p9&��2)'h<÷��Iz����I@�YF����;��p�pDEP�@@@ B����B0Pš(� B�  ���q)�c�*{0������c�C\cʧy�%�}ֹ�l *J�$B�Xa�WH�M�O��(� ��  �e�*1��U2�}8| ��M�~�U.�Cd��P�GA�D��.q��pO/y�K|�/5K�#dr���,�D���� (��F��� D�C�@J��ÔM��.Wi��!��I�Ȓ2���as��e��!��q `J�!=�wh�Ĕp�1�?ՏS���	�Yb�I�Xe�98��2�X�$��
W��AĢ�
�ψstd��C���HA���h�0�`Ę�Ē���#�,@�x�HBP88  �! �0()cJJ��%��p�Y�Uxzش��M<8L m0��ܤd�mq�
>3�Iy�^e�����X<�bJB1����`��`��a� � !EH �1$�"�׉��O��g��*)�\�������=���k<L�}9�g�s�p'*�h {�#2�D%��Ir��-N�C���0�)�B'��� � `Ѡ�I��`�/S`��	��f�D�#zDN8�������4�l��$ �����rN � ����w�����+�� ` �- �K,�D@dB��H9'@c�sRz�Ly�/q�=d<����!1y%]�Ð�=6����=iz���)���I ���;�ĢX&�@�a�#�%>�q�>�#���h\�>��DHH$� :0hc3Ô��T(@�a��Q�,N �P`iIx@��~i!��	A�����}�@p\B&�V9�� F�R�>+�X �c`4B(}��<���"���OP�	=n�N����P��t�R!�(L��Ӱ�}!}4l2��"�B��ɤ�,aYB0�%5OL0:8hP|bi8�1'������n:^�*��9�"�H<��EO{��P���;�(�-+�'   �P���'	@`(  0��}��)���@�Bp��0&���_b�M�6b&`, ��!�r���s��:LBɻV�İ�P
^4�]$  ������>��V�/uQ� � 	"5 M�`��јr�!K� ��'"��c|�S*( \|xe��� x�P1`���6�� Tb�R���F,!(8�E�r��?!R4O�@C� p�>��"%<�� ��B�ʘT��D�p$X�R�\G&%��% �����Q���AL!2,�b ���a"c �D
"���T 8�g���d��a�C8��!O!0K�L@@H��g��s� �����D���#�d�g�BQ@0��B$�OoY�3\c�_
<�1�45׹�C���%k<_�yp��S1c�DGE���� �	�e�<!)�)�\��i��6
��#�.,W�łK0�� �J�%. ��H	������� 1
G"@( 4n�@��gi00�	 ���f�-ڜS�e@L�u�q�Pr�1G�b
ș��$wD,�8�OP��	*��lP��|  B����H�2�	!C �R�#%�f�&�Ty��SDaD�:<�(�'���anc�Gy# )��g�[x���D��.�����I��� �� �Is�M�&����:,�2���9:� .<Utj��K��*�!��I* �9J�#!���(`��`x�! ��|�[�����@ � ��L�6<� p�y�0D2x����sN�{<�򐄧a��Sc0@Q��(!(� Zz�r��r�Y�ȓ�Ɨ8�0���Ƙ7r�g���`.��dx,-s�,�&���E��<$�%<r�y�S��`��\�"̀���fW��D,ʫz-�?����C@ "*�}>���`������}+��|�L@�B@NXC�1��3�C���t8N�s����2Dl�/�r\�<K�!�*�	!*<�^�%����Ib��`E H��q�	W��'��NB�e�0�TPء�E� J@�2eBb:l�,*}���V�LXdʘMB�dϢ�����r-�����6�K##[- ()��Cp�,�=��Y���
%"�0%�1�� 0$e�"B�E!���eI`LA��dX"	��c�DDAQ@�2#d2IDL
  � xE�'C�<�2)� �	E0ǘ�<␔�H��q�b9�˔"
�9�8f�h��HY",p��	0A����D*99��*%�1�U$%-�r��r��f�mzX�%!4T(��*0��ED�u�Ƴ�@�q`G��D�mN¸��A�s���B�
�?-0)e�ĨP(�������b  "$"��g�&�P",:��B�*��	�YA�=�0d4�/��o�O��M,h�2�� *��d��@0\2��������00��>9�T��E��C<x4>Ʉ�)��K���,!2e���B�k�PǅG�"O�f�%Yf�R����p�?c�5�I>�q���C����i�=U56�2!ߓ�F��خهb��Q��Ye�@�2C(S<�x ������b����K:���0���(A A�1!AIjB"�@ ��L7K���SAg�,Uv��c�M>�B���Eb�`$L�@�J4y��
�l�1�p����e���S�0
3�@HOÌ!��'�V��% R�Δ��Ƀa��P���š8�A��C'IH�0w3F�q
x`BD�����
'x�w� dfS � �UPv��Y�vQ� � �S�ė�s��x�y�d0�=������Ա��
9&���BHh013�`T ��p ()�k�1��<I�{ l7K68Ս��3�D�=&�ǂ� 	�A$� ֓��{�󴻮y�@@ ��#&\�ULzxXP44(��  1ʀ9 � 5T<�<�?���6Š�0;,�@�&��)IAM�~�*� *!�,6��A��K~V�J� �i���): (I,�x�Y�G�:��q3�E��)6>S cbB|�OZ>�  ��(%�X�0$��� 
C�FD���P��L�� �� �I�7&1O0���8���	)="n�D�&��1z����!�< �<�CާR�T�0�<cq$ � A
 ��S,�h�8^�.�DA�������R�������s�	����ĒC�i00A'��bӣ�"6-j	�����Q�U~�� `1�� �86 @0�;ZP&��ۂ�(b �*M�\�{8|����&M�j'G�YڜR�f�ʄ:-�xL���@!$�hy�C�ҵaҍ�E��U��;P�H�|�:� ���@(}�)�H�K�oۦ�s��0���.�@  �2��6ctj��Qy�YJ$ j$�3 �'ť��5�đ֋y. K@]��OC!�O�v.��`�!}$6�����q�Gj
3������u�q>�=0Tz�)f{��0��cH��FDD
� 0�Q����R�!Lp�aZK�!x,	��!
X���9OqFJ���� 3x�5�b2O��-f�IP��'�	��z ҂ lb(0~���B�.#
������)�**J�P�DB BI �Y�a�%��A&G��c�9�/'%g���L9�� � rP"s�N�F�x b�Ys�yj�D����fT�������b�� ��w#4���-�
�J{1�<��:� �
)R$�-sG�py���: �d��L4��9vɠ�9Cd�./qJ�<�J�`!�F ���Ha8d$3�������^(�IրԘ�I\�A���_$�n�B�H(PSf��ʔ
��e��`c`3���\���Á��q1X�"ۤr�i��ߡ��v�` E�8���>�B�'�D���@�#� �A��V�� ��pJ��ԴI�Q��	�ʷ���u��4���iT��#�� �c����|i�=��
Z�A'!%�%B���!�X$$D "Ddx,J��Pa(�@@Y�M1J��d��iNnP�=z���B�  ��C�
z49�5t
q����M�8�c}I�p@b4 2��i<��<ڊa(�`L�p��Q��� ���pǢ+��X�pL�F��K�CY�F�3�k��&�͘��Ca*�Xb�9r�O$�q�{��
�0�㱤g�ZÜ����s��V5+M㎷!��M�c2�a���H{�>Wy(Cx�S,P�nb>�C̐ F�Y0����oQE4��u^4�\A�`�8� ����`�D90-�[��|��;
Pe�(�I*@� �)8�#��9��n�X�Ӝ��y�9��U�svx��y�S�ģ�&&��*y\ֱ8c��}r,QC�uD�,_Mm
�d�Rl8<x<$��?:!@$� 0�;<��)�Dɑ��jf9��ILY��O�GQYc�+I���M�6/��S��8��#�A�|���vy�����4�"K�q�����^�����	_T�D8�I L��fQ8 ����q+0%�GQDKx6�s��y�?�3�xL����MN�%D\��\�rD�[̣Rc�
{�B#!�A`xt(	 @Y�� �	�� X:�9&CD ���	0�Ep"��c�)�ZoZ�=6 \�o�y�����d����hqE1��!K7!d��g�@�>�$4�bX9q�0�� :
~��*�Botj��/1l�Ql�a&v4�H� �* ! F���1��0FX�O�2�)�)����C�R�	d�E�<5dF�<y,� J Bq��P�����;&��a����Ϝ�����BB": 6�R �5�DG��S@'��K�s�p@� ��:{T���3�D��|�O�MU��BQ ����Liѐp���:
��W���;�{3��L`,Ĉ2{,#(0@��d�CQ8�+�ܿ��_7�1٣E��$E���0`�*��,"!EZt�	�+�
�`0�B�a�8���(�@�_6"����c\�]Y�ya���6�)�(l0�O�f@�$HPZh�|�> 8���F�2�D ! @   �J@���B� "��@O��KKA�f-�B�9Kǵ����#�cX�Č�! 9&���0"|z�쳇�E@� A"�#�8���ɀWi|>�j�?�X`	�G�``�(���%OL���1��I�y\(<)2(��")"*.5"x0�&(@x0 �$J��M~ � �
|��Y�c��`�t�S�q�,G�`nSe��1"<:�.*#x*,��a�b�p�>����B�A��ā�@���0 ��� �!`� 
�Gx7�lRb������0�*X�&�*!S4�Ba���Ԡ�� ��.��L�4Z�a�)���t��� P(
 � P�aAa%a�q-!(�"D����9f�:>=<�Sd�g���4Tֹ�$%�aB�1
*6�Y���xH�	 "�B �0>�@�@  P��!@���0FH	�iY��'�Û��9��0�M�����̟g���aa�PC�@�X
�6G9j��0��tJ2* ���K��\�
w"ï��[ ���I���C�a���	'B�@�!��H�b�!�#�")jd�#��1�>&F�
�H8 x���(��z��j�"� ,������,J[�� �2�-^��D�bf08�����1c��Ḏ�m��2�H	��09 ��BB�	 ��0x.�'�{8���_���վ�o��*j����ɼZ`�*Y\6ጐ�#�����1�Q��q�`��H���h�K�K �#�$���"�jAa (/��C0�M�@a��ax�F�1k�h<f��0A�قQ%��i������=��x��,�+<��J�>	
����I�h��C  �1&�Q ���rN��XcH�x�6�s@=�k\űC�����i���)���H�AH(�IR1�)�d�h�3�(��T��`P,�r�&=�\�Κ�*��5����ђ!>
�E������ɣr�
*	����"!
�[���2���*:�D�*}�x��B����"c��瞧�7�*��+���2�m���
1D��D�	/�6#�p�:��&!]d(.:���6��r���%�̈́�������f��y�;����,8 	��g���nATkA���u`������}��`��}�F ���d�,>J����ǣD����E���CH�� �p�1�H�YDJ
!��  @Q�BI$�� �k,�q��8bFN �H����>$8���0��3�@�e !y� ��-� 8FB |���B0Š�"��0��Ǭ�8�9�I^��M/9/����m�������	���t���HB||<&Y�u��|��)�Ɛ06���Y�9�( �P��*�/�s|�=<l\)b���C
 ȳ�G�f�Pz������"Ǵ�b��2@�L�
uI�i@$��%��u>�cs�, */��P���1t$��@�e�1����8L�ȣ3���>�� 2Fa�]>	G�.y��q�e���1�?b�EH8i"�a  da�e�ӧ��C�H�`{��z,� CNBQ<>� �C�Rc�5( �*�J�"0��1IB�*���>:�,1S LDD0 �@ w\��� �Ғ�`!В�aO(����hR$��	��q���p��J�F�md�P��B ��&.N�|����&����s���! ƐH #� LF% Xf�'��\�
��p����E�ͷpks��m6)�iY�ci!`������� H�	I1���0{��R�X�W�[�_�*BK�B|��$ F����$�J�
���0��he�e�d ���n���3a�)y�<!e�mx"T��Ii�AG��� ��QS��{�w��+�_���� ��1dR����*����K��2Bx�<`J�]��P.��,m|b^`�	��;ty��9m�mT0
#!́}�s|�h@���-9�J��Ѧ�HL���Q�d�h�i�ν�lbq�2��.�`������Ħ��J����yth�R&!�'#>�G ��@�H�$JZ�`<#��Pi��@Q0B���L��GD�&or�˴h# 3�K��2yb��H�Ea�{��pp`(��у0 J��D��"XB �#'`@�����1�4<��� ��7~�y�Q>�#��XP �!��uZ	F�"K�
]
�A�3�%C��r���A  wP� ���Y.�,%08��ib8*ib$iҼ����w�q.U<jq��LxF�MJ��k(�`~�b8�H�B��`�	 H ��G̀��/���5��6�&��l3b������
��5������&d¿�}J����mrd LdQ1����-uN���%�F��0 �4��u�����/�+}��:�ҡƣ"�f@�>I�" �GR��2&9
l�Be��Zd�c����K�1){0*@�p��sY�  ��GV��D���xn�D���%��)p|�6\j�9�<�y���c���c�ur	�3��ʄq�!�4'���   ��dI���A @y�-�pDΜ%k&�߼�30�z�ll�{��I��\���|��9�3Bd0��"a�E@��3���X�I�2�:ÐC*z�P*�,x�o�=/��Q�!;�3���'�,97�b0�&!�B���xI�$�(I6Й���$V�(3EfJJB�U���.sYB�C��25f�)	)hQ�A�^������sLA϶"�m;D�o��l� 
���oǈh�L9c��x�g�O�y��7��q0S�M�o�,"
�Q�:w0X�6h�$�{� �8|����F�;�#�<�$�P8xR��c���w�٭n��  �ʁ�_�7���דki	,L{1����W��u�DL0I���g�A����8�h��2�F�.S���D���ѹ�*�mFh�9C���"E��h�`�e�>!Q�ɒH!�#P�9�g8�����g�pq�8���5爜��C�T:،(�p��K�Y\p��Y b��� ��P     ����@ (��P`�(H4�2"�� ��S�*�0"g@�ñ`����(67����ɱ�03�X2,5_'�� �ҡ�`�)R!�&�s<�yn�A(G�P��O�wv�]H� �� C��No��
 �p��A�a�I��2
#`�7�R�2�`29F�Ѕ�2�iq��A�![��
���$�D�A�"?��ZCBedA�r|O?�3� C����� ���]���gL�MB,�x�!N������Y�4�@�!]N�I1��`\�;$p�0)䦘�<���0�~� K�'�� �S�(�e�"�'� E�H�Kԙg��b-l&(q�$� >� T�q�1T���1Vш��d�|x ��XI!�D0 ���
�� c` � $��Pnp��#��a0��yB	�CT,J8���II�(�E��Ó�c�äC��y"ns�G�@    D A0�!E``�� �D$�0�	D�!< (@Q�����x28�D��' !�!d���
Y.�l�π�|� K�X��H�Z!$�C��0�p(A�A�p��H(5�p
L�2�kL0�C�}0yr� z��rϘ��c�pL������ hX$x
 ���s�騉,�@��r̘>5Ċ�$�Ha l0:|�%��D�<b�)]*T9a���s�t0y�'�0��*uF<b�	"�%����1i���CB� ��xG[}���� � �؍��C��kФƢ�H &̦�F�$���"f�O�q��	¢C�{Lp��p�F�G�C�2�s!��#� �KD "A����P��KD���D�B(��08��(Xn�����ѳDD��� &a@JHB G��C@"&��"�BHi�PY�#"~�k�`@@�"$ KA !B0�`E �$�  PXB��1D<����	�����NI��a�q���&9�(�%�Q���� `
�D0�8�0��P01>!�8`q�u6P��a8]BXCG��cN�P���r�y�) �yV�P��,qB�O�*{�H@0x,���'Сx"j*JZ�P��B�`8PРA�<e������"��&����Ø�PE�cV8�sL؃�@��Y����5& `R ��UV���7	O�MBI��X���EPA�&���
:�ta�P�]8J��!�I��	#f�7��2�
�1��s
��J�DO�ta��   ��0	��(
!D� ��`
`C��a�Ij1�g "�A�
>[�9Ds��`� 0��R"E��@�"
��䨰D�����1:�GN  ��� ,�P E�``5P��0XV��`p0 "`U^G�!"�H8"&A1@-lT0��O�Qh��#��g��&��ȜO�#@�	t(!$��0K"��}@ `$������iTD�q�H �	-�H(Pl$T �3�94B���[���8�:slsHJ�@
Pb	a1$���H���>!ADC
%FD �`���n��E�u$.��YxBV��Eʼ����)��)���|	%!ac�#�C�)"󤴡0R0DA �T�40cQ"��dr $� �GL����0��� C��(]���A���A�m^���DH� �6&'����J@�L
�u[ ) �@ ��O � �@��t0�� ����pq�a�����9$�eD D%���62"U\"��-0*)}
x0 slr�9?����P(�'C�`EPV��bQ"��X�`�"�c0� � ( �&a���&!(�c��!a00@��6}*�p�lr?��D"#�%GX�S#"� 5�%�`,>
���H1�����Ln'�f��Y�P#�CD����[c"�)3���
����ȱ�)Ul�X2,B""!5�a�Q`���)Q����!�! 0���A1�<r�";̀�g�������Rg�)%�	���dJ��p�6��ԑ�N�����ْ�� -v ����8��a 	�0 ��	1P��P \<2P�m�f���{�A�N
���,�@<<",t�J�)�p �` 8Z��I P�G��P@@q( (����08| �;0v�tH	�@8 ��)�H@�@�L���U��&�?A��P�ӒP�d�`Q��J��$C�t����@ �Z ��B !#"&"B��H4*�Xc�	���U��R� c
�t�
a`P��F ��D     0� Ch�M�=�S&	���E� G CAG�CD�}E<�!e	�U,r��3&K����� E0x@�$�X�C�0�@ Fx�I�   SDb &=�P�<-�p���e�0
y|~�]�sB�0� |z���")�1F���i��o�����b!@p�v��2��	�q��! <B��t���(��� ��=�	(�ab��	H�C� �R�2����āĤ@�0D 0� X��C$�%"(�:AqX" FH��CD�a!# b�(��	���S�)���L@L�M" �D�����&��I@0FB�1X	�(
�`%� �(�ABP@ �    "�@D��$ �@e�吃��Dh�0v^0M���ˁ9Μ���W(9���T9!! �1L��`I0(@"A �i�&�K�M
�=z$)��8��ȇ��S$G����ǔ<CJx4y
�|(.:'\�*�"N�b&�%B ` :��,YNA��DjJC �nX%Y&&��P�  *��p3+�иȄ�|�w(��A��Y��>6ky�
*�J��
��s\����	��yB 2`
O�`��c��1�D x6w�%G��/���`%״�!

 �'�F�N������JB��HQ ������С]����1@�� K�؂b�K�:�x�$@#���! $f	c���P��aa@������`�H@, �hL)�#&F P��PD��УN�;6��h�A8�}Vx�O�.,��C���_ ����`��bP �(��zc`�DA Ѡt،#� tD�x��m蘰(�b�@ ��te�r7ݡ��g
��<wro�6���>����^>��bp�r"~�BH(�a�a�1���k'Pa�������@(��]��D>F�dDA��z�A f�!:��Ĥ
p
λ�M�!�2�C����Ib"���Q�.���A�@�I���ӆb��Qn��5B�Ø���6�9�ôh _e�E@SƬ�Q�u*����̆���#��{=��w�!s�ڛ�3�@҅&a_��@HBŅ"�AP8B�I�<�1H�Ǉ��6�"֩a) �l�@�\����z- k8�C9&��8�Ͳ�y~����8��/P"��0�Ufi� ��!� (E�� �c�ѣB�C&��Ӊ��E@c�
$AD��B��m�aQ�C�h� A0c:�wp�>3��쐠F�iQ@l�PB��6:�>��G���&��Id � �]� �40���!�7u-���(� H
^Jef%��$�ҲAc��l�D����fe;�͒e*��o�>�5��G�Pr�1�6L�2����@ ���(%9�{ � EI���Q� A� �$�9�&5&��6����N�-��fI�>�F�"�����	�`� D��DAL��	�¡H$@"`w� �� � 
T-�l�C�A��6L��b��@��O��{sW��˘x�26��I"	W/1C� AG�@H 1�VN���n��C'�6F����(Ȉ,�d,���X����!W�E8ASӢx<1�:��'�9��F����x�xX8(�ġCL�C���9��p���1�  �B	�  !�0P!�A�!C���@,�	Ä��\^f�"�H��,{��ď�Ü����Xp*���` �@P:�08��,-DO��,�#����O� aɄ��
c`nŀa��y
r,-��ژ�ZA 
�q�X�&�£� �r
K" ���h&��@�"#��;	$�B0�b� �F�A�@0����.6B��>)0�` zd��b�Ӈa3��4�`"t" 
���#@0|��@ +�0��`! J�d� �e��PSa1$�Q H8 ��� �� �06��t�>��� Bm�@#e���D"��(`$���(}0����t0LG� � c��	 6�%�H��aLB�>[�1�����v.2��8oB5M�:�cA�x`0&���hF#$E�!��a�D0	�� !!-�i��Paz	aB`�5�'�y�a4���X!$�kX�@x�P|�� ���:���d+�"|��4P @�C "�a�k� ��G^�&0'R0b�����R��E#)A$�����v|^��H'�Kl������@(�GF"M@$�T�8r,5� 0���`b���J�`%BX.cQB�B�������r
�m<Z�@p���Р���c�&
-bB&	���@!08�hP C0@I�@(
�4 !8r�X`1J40�	dX��,*�0�z.�6��U1>���jFG�"��P�`����� &&>m40#p���DJ"�"$�C$j�̜�(#D�tP\I��c�G�
l`ѥB� J�*�P(�@�� �   y��( �"� �	I��0 ))�A\FQ��R�d�i�EI�6�aBO$&/�=�x8M�x�7I�B�ic���� b
�P�p�����P�8Cx p�$�e��RQ��U�2cʒu�tXr
��� �X�����Y��,)X����?$%��1� `�`j"	E���a�q"X�`�	J Q�!!D�!�����L}4B��lѧH�M��A��(ӫ��ac�铆"� b<��I��C�
�d�%9	``C �C�H���!�`� �.�`$.Ӝ�w���XF3q��X�L��4I1 ���)� �F�"�A� ���DŽE$EA� $�+i^z�D
J��B(	��D�C$,��tX���4�d�6���8�iZ�<��De�B�b��EE�� ���`81>�%�08(�A��L=�6�)P���)���#L!,B$��}�F`q7/RdN�+��>>�HPC#I�:!	�� %	!�b k̙ca� �"�#�8Os����9��DI&���R� ң@#�E!�S�Pr�[ vph��r�c4<�_�5��8�Aa *�0[H�M��0@5 2�F ��b1 D�p0�	a��Iq��Y��,2�]4:&]"&:�裑Ac &$�a`c�S��(B  0����H(3JjZ�0�D���	c�` 	*]�d@��0<�H(�&�P��!�� 	B���%��:�B`0L$�8��E!`5c:&X��,�d �i�#B��z�uKd�0X �5q/����D�%$�pL�A�)�  �჈��X��� (AH�10�a�i�B�3Y��1�$#҃��$��쾗�s�-������<�(#��g�"��C�@�`0��8���<�徟7p�����Pq�E��"�2���!��H�-�q?r�����<#6�P1�ВpX�� �"( ��.�yG�>M�t�b���$O��a��t3sB@(�Ț���6K/KQLB	�`�(5!$"c� �Qŉ���*C�A�xP&�m����x�B�D�b����Y�i^�J@@A�V�as��x�)/
`0�!� � EP �2@M�H���3f�k	2�#"�6�cl�uB��siwK2$AL��v�mvXf�P@a"�0b �V�L��u�Xx(PB
	BEi	Xr�  �q�$a蓨)j�p��'�f�
���nΐ���XY�.�����H�D�H$`$ )	���6&�#@�!P B!(3M�0X֓���o��fc�X
���;�('��e�eJ��=�^�y>L�e|J���`75@ >&* C@   �!�F@X�����~����pq:.cH�0�0JgC��3�4o�)�QE�v����K�/�gDÌ��BX�n$EP�	��0&��&=�m�<���� ��(�<�YB�-�AP S�,��(��2z@0�� ��(���(9��D��$�Q�O�_�I<tb01>*)B|���S���c�,�]�ᔹ�#@@���t��/�
= 
A�����>>A����pb8�(��r (F �C1�Pr�[���b����F�``4f��> a�<m",>>�"��J�='�l���c�e:PRXxH$EC}��ag�ş�����"  eNIF�&�Q2GQ(`@��Yp�C|�JGG˒
&Æa1��l���1\^s�At��c0v�ě\�����BF���P�H��u�ق!#���$ )  Klp��fA�,@�r���N~�GX�a�D��>���,�0.��e��)�9��O�&8	 H�t�d���|��(mz��{�?ɏr�OD�$��@0X"J��4l�m|/� ��&��V���"���g�y�LM�0J�0�6���l�,2�0yCd��o��H����������<�'����5"���� �ؽ�ޛ��8�e���5Z�ɰ�YG(�,�!� &�����u\��}�
(��G���ɿ��M���ARpl$!��a�A (�,�ϻ�2f��������<�_%��I�� !Hz�2E��A�82��D���`�V
���~��9d��c���aa���E�!�y��]�yٔ)��P�f��!�$����w�y#��+���$���ν|�;�{R��l�p�!���8(�� gNNA!0J�����*G��xб��`��P�r@�:[D|�7i0	�nV)��ʋ ����]z��E��E^����c�����T��/lQ�!࣢A���q1Ј�q���闗���Y�q��@�I�9���#��.�8J��y�;�d�4���2�0>1o�� b��6G�h�b�}ڬ�������_U����Mϯ�<;,a�4(h�PL$�o	�s����amM/�anrz>��mD>�1sr���EpT��5-2ƒ�$5DD6���|������,H�0Dk�E�s��|����v�1��s ���߯�:�AI(j��&�t�H"'QRSq��� 7v�s�bJ�}�S8� /�8H�<5�����3E����wP����/���[� Y�DMy�/�?�U��)�f��D Bx
,� �@(�0�X%c��6/�)�Gx&�����A� ��p�4��Q�բ���>T8�@���M����������%��,�|�@A�cُ�m&.>� �� �:�LIxJM��Y�ؚtqӮ��|(h��[�)�a����[TY,b,8M�y��,�1.�:�v��h
(�I
:�I�� ߦ�c��ɠQ�/��~��cv1a�0(<������`<�A0Լ���x���JV
0�|��|�� �E�C<�h�ӧF��!�(W`�\�'yP)�I��0h
�5O�d���Q�r$�`��%��ߤ!@������t �qs�X�P � S�u���l���(C0_��3r��a"	p�M&��Ʋ�f��r��z���b�J�4�m��HI����?K��PB��2��2�h8b��Kl0�<?�7�\�B =�⿏�k��E�N Q��,I�
���aƉ�<~��݂d�	���F�GH�B��ld���c�#L�G#&�
��@0IT��Ȅ'!^ʫ9
, Q�~߯�yI����I���� �5"�e��R#C�� ��Q�H��0���[�G�13E� P pu�	߇�|�M�p �� H0
<��I�d�,�1�Gń����i����>�7�S��Pc`��2D��:�S�b��P&�a��  ������Ԗ��SG��]�|	��?(�/���p�AH`���8�pc�"� �����<��K� DA�Di�'C�,:.+��d��� � ��~/HA���{Z�L��C�	x 0�Ό�$�� @0��y��(���c�4$��?��IlP04���_7 '�M "؇�D�s��7�pԪDq�J� D�[DPg���h �Zш����֙�" ����jֈTx��d�5�<�%�\T�Q���ݔ����yl�B�,u��أD��1�< .�- `M�Aƌ�����,�7�dK͟"d�{�+!�"�`��4��^�O�PuĢQ��}��1-0i5B���y�"ئ�:�,�)���c@_���[H(� 7b�R��%A � L��w�A�~^�Abp�p��O�!PSp��78���̼,i����?i~�}�I��p���	(}:��#h�r�{p��S� ��} �,���l�ə?(oCy����3��RJ��`à�9��Ö���, �c�����ο�4D:l!�qL)iq�}�Ԑ0BFq�f��m0�h`B�
 B� ��� H�+xX`��|�H� ��0	�``�3a��#���U*�ds�y��H��\�c@$� �B|���2���Il��0a��fs��?%JMN�� P@�O4%�d M��p���-��8JC����
�X�8���&�E��ksS ���G��c�e�250������I!�1H pG�/�XN�����$���Jbf�~A��
9��D �0�A0��[��&%�]X;�sWo|�)����2��5f�#�}v9�u,�R(%  �[��9` P�\Y����� ����$��M��:
	��pT,+O�C�:�u"�m<�hh�?��Oұβ#فp��lq�S<I�U,�s��0S ��4��  d �,�  �14������_�	<6!2	*)HHD�+|�}ٺ�yѰ�\���ο�O��D�ؤ�0�6�HZ8`�:�Q���'�| �K (�
0����)J��D�M>��T��9D`�:@B(��y7�"��o�,�Rs�KJzd0� �B�69M��(��QvX�����f�����i�� JI�	�p&~�z����aJ�!x�D"�͜����P㢀}��1�0 ���w����8.��B�MjS��� U
�*;R���x�U⣠�@@�	�8�+Вw9E�	B4D"�ddX6`�" �)�7� P�  c:�PT~پ�Y=�g�240��~��I&�$�)�_�� z�>�@
9  BG�`4 �3������.i|0�! x
KF�!8��� biH{�` ,����`Nr�ml�2�q�$Mtt  p �fc�G*���� ��޳�"�H��`P �P�08@ a��c^���Ym(��x���aNq�.!q'o2@���%�F���	F��Ht ��   8
�(�@x ��O�2N��kP
x�DG��7��uZ��~J!�@��|��3�
��9���PB��
	�s+�h@�4`!"�   � � �!�l@|�e{,o@xN����M;�G$�`H�rz�a ����T�^.�zY.h=�Rb#�ި�i�DRBG�<��pJ8��1�����A#�[�����ͼK=������绗�d�Ib4�P�,D"A?I #�6�&��ہ���op�$I��0K�}�Qp(q1����0Ph�/�HI�B��@  @� 8*  ������W&�@`a��Z�#�Y�����&wN���%c�=����"�O�F�=(%8���Y�����0 $�@ �D �00  �������IgQ���Q�@ RR<<��l������0�l�I����8�R����g���67��(�鱀��E�<�A _��~%
:��    ���  ��~��4�j�A0X	��0̸�N��Y�82��Ü�s��(x��or�00�׫CwJ����g�W�
��kf c ��`�"p���� �/��^�{�_�6|w��JAF�� �mZ�#�@�FG��+W{~$�޼8�2twe�%����'A8���^��WpɃ�l�A<W8B�m�	� a�Q�D������P �� ���  fh��SRL���M*c��0B���6A�_�0/a�v$�B�`�9X˷�s��n?�r��Ӡ�&e껞s��� <C,N�� �C������0* �� �+����}.�Iֱ� �G�`�@"���΃|�=�n�_�~�h��P�8���� FɰE�����q�aFxac�U`4 	�� �� @
@�G����)3�<=(.!  ���Y�	�A^�+�?P�2���+�ZZ~�	߯�q���8-���H Å���?���c�?��NC����0B4�SB0
Z���?3[�Y�v�HM�1�B�@Ø�s�$������9<�����x X�Û��$@��jH�Y�Z�$0���v6u-�G�O � a�T�Z�  )c�'�}p8Mg�;k� Lhy'�˄�d�1�j�e���G�������/2����l����_d>��s�}(�G��8C��y��0\  +V ���g�	@��� �dWB���]Ȁ �X����"Y�X�4������	�pTv��J��aI���?����F�z��?h���)�*��F3�@�_��l� _a.�I��pɀďy^ ��� �- (t��8*1
��p��?��>�5�S_uJt�N4�+uR�(D�"?Ə���������d��í�EO�*d)ieK�}��!�`�%��c�<WA��1 �     &�� O
C�Q  bd|�* t H0|&((x��i� ���b�>���E�L�E�~B����E������6�b0�>�� Rh�|     (. B��N��Cָ����<�0�E0��dȋ��gH$��q�7��s�I�ɏ2�?gEa�'I���W��u���4#��B{��X�;�I�H�*0�!"� E0  �Z��?+~_����q�3�)#��k\b���C^��JNKC�(������߷zw����)X�0TT�L���}� �e���	�2P	 �P�	9Pa��K坻����H��P��͎���>j�`YQ����T/�}���{��L�뙹:��ތG���[T� 9��A� ��a* $��s�b�A`LBH"t ���ws�*� B4֑�L�V�#af�	�O�3\�������,���׀���W�*��&����%Ҝf�+ S�I��� ̡ޭ� *  �h 	��cH����
u&��" ��TH�I�^�i$!0@�	w�Z�K��m� ������~9p�*���\��Ӵ @	� �����a�8ɲǒ�~�q��z�nX�3��k4��I.�ϳ`��(�`N�&9/������ ,�A8 v�6�9WYgA��`�ƆD�0!� ���<BM �f�g�}=����sC�?�7�j��	]a	�(�$����0aD���		�0X,���#k���Λ{��y�ePT$�$&�$��@�������a� �!�`  �	�j "4�Z-�����y���h "�Q�p�z�a��00c��/���w�k�����IM���%|6��r/�E#���.=
��#��P� �-�`  0 bl��Iw�g1Ǉ��"���<z\ AIBF�Qr���Wx��O�1��cՋ
�>7�������?QhSXDg�K�0�3�A	0�{F\  <  �� d���1�A�0 �A�l��� �	�4QB� hA�X����C� %�.	Ä6����`�2g�H���G��B^Pp��   ��}i��SX���?ON��KCG�g�'�ئ�P*��1#�3³���󫼁?Ɉ�M�� J~���	��|���A�66�F�s)/��\J]��8��+�� ��O!�8	�}-�d�6���q,��PWm�$}Z*��@�>#c�],"��u�������}���_� 8� )v��N�1�dI�^`�Ȁ ��_!�B�XX|���<`���4;8D�Х�Dp'�ueb����A���t����m|���=a�^L�w��ʅX&�=β� M���d�)V�P� �C��E�`�I�萀���ܾї":�.	��d�l�dx�D$:�5�����?����(K]�p
 p
@�)��K0�٢�	^���#�z��ރB�PC����!`` �!1E(����^0�b�<Ul�'��5M��D�Ŕ@N�"�}��~/' ��	C��/x9% D��Β�#� y�R4�-p(@Sy��@Ki���ߐ�X��,�	��8ˣ��S��#0�76-S�uF�_�_��_�" � �P�,o�Y"4�d�VP"Ƴ�ҁ�n��#0��������Kl����;xK������0}��#9;����N�FA�sD� A�\�,���?��<iBM8���Hq�MzTX��b	�*��� n�p�b��"�#�|���</A&F"��c�<��F!Ba,�*��a4q�8���G���e_'��o  �'�0hdIH���P �!P����:��!H�0���4���#�q �}Ttt|"l��q�r,`��a`<sZ,9���{r|5��}��zK � ���K,�!�B�&`�Q����D!@�_��P�䉑x�W-���Y��5m�A�1�g�9�آ�2=F(�^a`�@�KE <0��>���@!��<��������YA�@�E�J$����:5D��a�u�;��wz�)Gl����� #ɒx����(=2�G�9�:���	�����u�w�#E �(�s�KrK aHx��Z�XeK��� ��Y�$�5V�y�H����H��g@�!p�G��cT�(���\eQ��$�� ������(��	�a (7y��69Ul�P1�񞊢� $��It|� b��,�'cP�
)� ��E���q��,x�AP�DDX�Sዙ3��ϳɋꇒV�lH9����q�	Xd�<� @���z5�E�pPXb�	�>b��6�산�Hb\&���a�"�1�@�pd8��X����p~m��t�0  1�H �@����	L��`t4"R ���[E� v��"�P���]����Jl��L��G���
Ce�Er�KB�.���1��Cq(DA�m������ �_��p+���Lq�a�L�` B��V(.���P(�/�7����CX~�O��X�� �(���u�0�H�	x%ǀ�@�p�u����<'��� �a,�M ��P�b�c����F������߸��,s����h��)D�-l$��Ĝ�q�lq/KZ,�F�%C���@����!( �48
�l��NHI�bt$�[��
 �ĀӇ�C���e����l㓄S� u�"I$����١D��ڰ�Է+c�h㟣��yo:�����D� �@��8�*+̐�#K�
@ �����H��!���K��3J	FFe��:.�Y6�B
 �b΄Ȉn�0�z=?�ߦ�{�3�U�p ��#�w�f�L�<	@=���  bA��{�5bLʴ�Y�cf(2e�*���*��P�D��Q2�Q.�����濠d	C����(Q�M�:y�(�K
@�/��+Ĝ�H�C<�Q~�����D:z0�D��#q��p��.p7OS�ΐ��qLb��A`l���r#>Q��_�G! DIE�A� �1��\"���R[`��!0�&������6v��τ;������0`I��lm�<��6�1=�ô0$�5:jz0�� A�� �F�7�$1��ƦA��6��0 Eƛ�8F�M��F	b��p�.s�ì1�"cɰ �q��q��ڔ<G����� ���+<D�&)| ����w��M�����&#b�g��P���FB�b��EE�G�� ���Ȑ���q(-�&������d�*@������\d��4 ��p(�e���Wr:�-���}F� O�Tv��8T��cÃ)��0��6S�P8%d�5PC(�K�@�`��r�o�](�b˻����g����@��{�����ء�q���S:�s+ҢDZ�Ȃ1�c��q�A~���"��M�ə����%9;u�'8��tX�+�c�� %a� 8���7�9�� �	8@��wy��0�f����s���/qR�Q3��Ĝ��`�:9_�"WQj��:}��!��h�ȩ���a1٥� P ���q/}� �Y��0��8��/�0��D�C�q��.�y�,Q�8������b�S2@ LM�`Ydx�*{F�&���=U#,0G@A���k,���K�a�HI�@�c���5y����0=�L�o�x�')��| �3X ��8�G�� C�h9��sF�aOK�Ib�Ba�b��=�K<�Rd!0FY|�/^�J�<�B���3��%�ʗP��B�a"��h� �y ��T���>Đ}�C""��6��)�a�ϰJ� @���?�KL�H�2#pn�0  �<+	   ��v|r��g�����
�3ƀŢ���|eB�>��D�E�U��'P3�-`����,�Io��LKF� б��H0����p�5䁤���Ɉ|�q�	#
�'��UJ�,g��{�@���9�&/P�n�E�H�u�b�%�,
��DN�`� D��   p/�lc��s�=�=t�KF?2�2��� �$��#MH&� L�$��,��إ±͈>�aa��KІ (	��	x	B �}\�� 8#\"�  ��@P (|�63L	�	���E�%�"�Qc�%LFX�`@ "� ��-�48�8*�(BP Pr  �  ���;��JH�CH�M�-z����,!
��|��Nކ�"A�Rd�yD�X��"ˈ}��a�sx�yΐS�ɩQ,�  ����>��10�[�f@b���_3��.�xd!pD $��ܔ>�\�D�!Y2���`9!=���y;=�b����1�!�a
�C Aܢ�ģ
o>�<�� 2 0L�x,D"�u�dJ��b!���"�&*[�9���An��h��)�@�[YȜ��r���k�5�	$��NF��9f|�!�K���A	$�$F" @@Qa`0�@�$���.�!Бu�G�C�61%<40bl���H�Ø�]j�|�@���!�� fC�4B���c0 A�  �p/D��� �`    � �ָz&m�p0%҄T&p�,AA#$D��C%�0����p�%�Y�3ı�%`�0Z�Ep�� ��U<d}�s���vm��w=B���Dt֑(��0&����y&8HPD����x��lp���@�Ȝ�	�I0���`)�r���x=�L���t����� �K��%Є�! ������E�0��a�Ɯ�f�	�!π!�D���	.�˂@K��8l��A(L��Q�/�����%�!�0�� ��V[�
�g�EN�ǌ��#X���aN@�٤3R�b�M��Ѳ�!�M��O�Kb�˘A @�#�0����M� 4 �C� `	 C�n$C={�|U8D
ERg��N�"	b��Q������%�W�q�*�axCF$,�"X�0��`Hh��I  	  @"|J �[�H *X�4wP��:&�3�.[�"B�������F�<&E��G���D���"	��0	��$1(������@���X~  ���"���u�#�1 9EB@&bCc�L��X<��4$ 6=8�8SL��a��Ƙ		����y(!r�8�G��� ,w�=��(1�N^:  0�.&�Ĝ!`�+Lw��fea ���#-�)w1�:����G���$:@B �����]�&, C�D�b0��< aXB� �w�8��7��&��A���'z!��x�D,�Z�G<K��x��m�1d�q���|�#"}"�D�	D��* ��`n)d� 1c�B�?�Cd��	
�"�C�</��bSF�a�PAd.�`�	���.��Q&� X���!0���3%�_20'����  C0� 0@�� �h�kz'���qj���H1�:�iz A
�l��6C�YaD�:=:Z��q(-��ScQ"�%ѐ( 
FN )R�~��L�)��+�X�[%F��i��A�q��8A�Y��U��@$ *"�ӥF"�%���A�`�Dj<�%G�Ql2~\.",Ƽ��@!�	ָ@A�y�@ ��� ��x���p����]!q����U�b`<�:w��K\�9�<WX���DZ9�`-k$	D^�2��& kDZZ��a4��$�6����������,Ps�5*x�׫��-3#*"D[;��x#�/s��b���I�x-���"
 "� ,E����@� �$P   �
A�Ј�*1��$�� l��مQ���G'MD�4�a�g�]2C* (`�F���V�H7/	F�a( 
  @ ��y�ɢ2J��x 
$���9D� �1֘f�U�T��Pc)Qjj��V
 A1X5B �J��; �j  �O����D���&@c� �#�W��S�
!0��]4^�b@B�
{�P��!A8"%b�*�"�y�� 
2N��Cb��g�gˠ�B�#D �(��Pn��\��P��3E���� � �0JC����>�%�瀚�-���gF��1 (�qx���5��Y� cqB$�0B!B(
�3��l�=x��y��Y���A�㋼^#��<ӠbQjTs2�q�����d�D>Ȃ/��6�sб��1(K<�@E"� G�D`(�  	� nEY2�k(e�D�p<2��P�`�d��H�$��%�A,��b�c�ҡd�C �$h0LF���/��B   @   Cb$ (  @  �:M>�tA��0p	�1L�&����a &�A�61R$9�eLI˄E!��(P�b	�4��� ��pY��`���R�K}�a����nA�x�r�:R�N �D�m�0%@� ���M�9��gT����	gX�H=�7D��6դsZ$�������u:��� B!@X��1fAD��F�B� @� ��ʝ 
@����z��\�9$��Rrz���A$ge�����!�MEM��Q�ɜ��&��u�o�
�t,A�K	:dUdZ@��
�`k����?a?��ˬ��� �|^� +	&�����b�=s+�a��0���}x~��M����_��7r�%%��Ȩ��R0��  .��` $�  
p�؄��d\�����Ҁ2�6��I�>�$&��K�� 1K8 u��˲Ԝd�
}�D�ŀ�i$� �.K���S6
 � � GqS� ���`<q��d��ӧ�&*�&>9(��h�e
! ���3N�A��� ˘}<σ	 ���#M��C ��L�P����� AZ)Rޣ��x���*cH�a�`�P�y�[�8��Hp�n��6 ��ǐyH�Et��r��g�2A(X�X���5�r?��9̍�#�!+����o9 D�`�� �`Eࠬ �(YT����V�4�\g�#�f�k�p���X
�s�7�|+��
��b�Np�S�鐳���<�92��3|�8" �X��ˌ8OMc	tG��� �QdW��K)W����dS6D�G�s|H��J�cܲ3S�"jX�IIQ��M{Z�A6����y�e���I���fyP�hh �� (�D X���m����֧��� �p���I��
�`C02�7��X�d�bq�#`:��^{�"�`����ᢣ������ag�#�%�   `�    a �P�j�A*�ɖI3:Qc`Ԡ���H��#P�I��J��p�'�E������"�P2FD��A�;�d@ )�  �(�Q ��  Y� �?8{4�73B
�6&E�aQ��s�H�8���)�@��I��w�{�n�x'3gH�ZX�|���^Hj0�Wn2�I��r��P��
0  V ���p��7Pp����<N��&#* ( H�3e\F㷸�,�dx�.E.�f�2?�9�Y�@_y��f>` q��ؓ_�^��r
B!F&�d:�x��*��4�*��E�.�v�.�w�hB�&?�b�/�"s�7��#f�k��&�C�D$�@XD�h�}T�iS@��F�S �vC ���I�z(�9�8�C^�K���r�;�:d!D01	�  �J� ��J
�:!3 &ئ��{��J�@N   	q��d�<�Ź@=CH���m �8��ǟ�F�>;�a�*
I(}����4��S�?9� ]铨��%y{�8��!�8V3s13@@&�����$��4jf�9�I��h��$b�*S|�/���j�6.P�Z� ,[uf�-'!�69 , aH^[!F!��<�[y�	x%
�B��0R0<>c�(z�	�D������\�~8Q  B�5b�t��<�E�x����  �0�x,�Y��LҠX��� .>{�a\��6�,�"�n&>����X00BD K >��Q0v�RA��Pe�4FB4 �� `ȼH�������`b Y�&CTBz M((#��ah0DHn��%@ �r*�.�p7CV��]<��9}s�Cn���?I�6.��"i�D� f��6Ch4��@�j���1?${%�9�Y&�%��� �ǅ�c�@`�(dy@���0���8&b�LY�- � ��f�10�w�q`� �� ��$�{9�g9��๋��F��1 	�	 �ҧL�EL�9FD�k��tX��Y  @0X���cx��~@E�0D"�0�9m�1�"�P� ڰU4 ��ȗy�o��1��(�r�8'C��B�1�D� m�X�e�MN��v|  ���!#`T�΄PI��%b�m2�$`8�
Ɓ��Y�CTi���b�D z��E`0 �Kx�0#��0
{R�	�mQ|���!!�p�I%4t���F'E�.E�t�`� ����O"�>߀"0��0�_a�ϲ�QjT�����G@$%���  2�!\A��	k`Έ�ѐ�bx�KN`�y"A 4��u��@��( �{y'�Χ6��`��F�P���I	HH�<��&�c��`C�P&��=��K�������P��U�p$j˵(Z�?�6bB� �YF&�.Ï�K����B	�}���q�&	8YRx�x � ~�;ࡲ�%��1�D��s�À  ��b �
���)���� +�I )���*7{�s퀚�H$�N��Ii�*�x�ķ�E��a�"J�A	�f����M�`Q!Kk����Er�< ���s )���3��S|�}69�E�G�2crP( #�0��y�2�p�
�P�L���H`�*� �ŐX#1��@( `r^�a��a�E�U����,�pF���
&��H�	SZL��i�c�� �Ax����0  !�� 5k�T2�H$eR#
�Ǡ�ʉT{���
s|�{d) C���40�?	9�����܍�*6��Xl���*c*��C�" �$�<Ŕ�����\#�`��0C�	;r��u$9�!4\J��=����)�"0�f, "X����q�7h�$����Z�����4��9&�$�4i���)�H��rYd��"P�M��⇰��dx�k\��&ǀ)U�qh���@�ᳱ��1	p�&#���q @��  VT����A�H��%)�D�b	�۹�g0�!zl �8f%E�A PBRTr���������*O1K"�%�"����a��KJc!���B�hr@B��PT �����i���.&��Y��x p�P(�ˬ�b�&�.mtb(s|
� ��@�x�L�z�Tȱ�"
<"%��s T|l8�]i�PB&(� 7�@  �� `�r�@�J�����n��lӯ�=��hh2���b��ɒ����X��Ip;���@�J�0C 0?�A�i��8�jw�����@ @ ����X<�����6�*-N��Q���
P��2 0����=� �����ĳ��2G�\ H��2 d�83KJ@��h!��IL�ˀ�Z5��P`0 � ��Cp#D��a�CzF�2%�4Lȹ��bD :7��^�l��q��cȐ/��g�EZ��]�
9Z�K�����Q�(�" �pT 
�C�����` 	���hQ&A�"&:*�.#*x�Q��P� ���C@ڻ��?@
�[*��  �c�f�Rsu����Q��W��/r7`�e+0.=2�9�[\�FEC��C0���ד�/ `�"�]� �@�A�����) ��9v���J��l��pHa@^��)�}8�b�2E0���`^�<DK���s�,�#x�O$,�k�`@ia<���x��#f�X G�]:8p x*�����@�>�,1BeƔ2P*��M�ᎊ� �)h�)��&��8�X%�� �@�@| �`0)< 
�Q�)����5���ρ��2W�BY�k�%(s��|��H�2�7��  x�@/�8 �Z2��% H0(�<����1cf ��.��S�G����A�5$�$ETB~�$ ��;� E�f��( D�� \�!�ϔP2$���ٿ��WL�.��e�  I�O���ꜘA"����u�dɳ�E��]0���p ��$���B ��Ơ܊���h�D��`$( ���{h�� �>s��ϳ\CaJH��qf~�5v�ߤ.!5!2Sr�� ��DB�P30
  īN�[2 $VT%<`ɐ��x��S�U6x��g�"1��E�O��9��DD��G���ba��WC�*�� Hx0�/q��i���0�E��E��
�7!c* <L  ��H�;�P���8�r�˸��!?�e����r
��y�]��$��x��
���!,��p0�	 ,��@d ���cL�1W�qh��Pd r��8�e�Y��4.7���� H��M�<�$  ?X@��(= p��`�� ,��;���o�G������3�0W� xl�����K��*��9�C�O�R���F8����hP$��dE� p$>&��%�D�@0���a��10���<b�*1+��c���Y��� � @D�s�īLq-�! @��n c ��"YC��|����2��&S�diAЉ�b�!�<bH�>�� @�����
� ���c!����  ����K&�{�?���Ӥ�H�Q�h)`09.`�M�GJ��qI�2<_�
Galq7�#1�P���!�{�F F���Bx����h�0��
B  � "80V�h� @�=��q�<)S 2��!�ؼa�hXহ�����ʒ���BX�<O[6��'��2���vTj�;�����Ģ�06�]*t�	��p�Hp?�@�o��{@ 

 ��D4�b    F�`  "(�  ��?�T�G����|��<��(d#ap��(PD0Wx5 d��]DZr�����P P�Ԕ|���� a�s��)�'�#�'�S� �0<��S6�7 ��$�!Vl��P �0�׏� �$��5v7���_jP�]�1:<:* � ��׺	����e�wXd��c(,2���p�<.!&�@ݺ
 pt�1z05���_g�{�.��C ��H �����g�.�ʯ��B�:e��b�U0���ti����TM8�0����9�ޔ�(W'b�2�'Y� P ���fR�����=6	!/=2�1�s�9ۤXa�M	L�hq�@�@�4(nA�9�	$���^�	Ę  � ����a B�9$��=.2C�;\��|�e�鑐��M�1��PX�p�
�Q"�G!��Ba�k����0 ��0����;���\���
=lx0]�(̐�'Ƣ��K�A�V��Y�,P	Ƒ�8 �!�ĤH B�<������=�ο�o�E���!B��Q�>16Y m.�G�:	o�=��^��P�%��<��]�r�ɭ�S A� t��r��	��|���-��6�x7�+�!@��0
��D$$&�A�cH�!&"!yޡ�=�	�#���R%�=  Y��#   ��(l�!	>�����3�x1���%9 �!+�zaּ����j�&m����(���a�����4�ʣM	Q���"��P 	#�1xϐ�B!�X g�*�Y~�"�,:79;P�E�����}8�r%� kSj 0"}�Q�OB��|*@��%=p%�|M���X�`���" #$KC���b�>����$������#��J�+�@&�y�5b ��,�����Q�c ����  
���BPr@�`��������~�
  " @ >
12	m�pLy�M�����a��T��y&� ��ºT�k@� �.��&�WY�^�9���!O��K�# I�   ��	7a�XL����Hq���Y�ͳs����I䃂�	B6,C��O "�b�min�e\��
����k��� �	� ����_�YA�r�0b�\ ��
a�!�N�_b� �zRnE��<�`��`(� p0��<M�
�L �  B�$�5D�X�S�Y��!��`B�yƌ	y�&�!MV�� �: ( ǫ��}�%9;\����-���n�(w�, �x��5J,BxLH���A������x$f�3O삲��(����� r2z0 $s��p�9�`@�`��C�!S����CTR80��Q���ɐ�p��(����9%�$�1�5�x�L� 1j@B��-0��E��\��.�Q�oaI��~N�0"1a���/�q !��!�`p���Т�-t��`x��]���=��s�5`���@ ��3\��s�u���b�x�����a>ȯ��܅ ��x�K)9���1D�*{C?w���K@��Lb���Q~�<`@n!�X�Y�c* ls�����ļW.`  ��I��:U>E� @�! ��̉�ӵ��d�r��L�G��p�.&Sd 9(� K�E��Px�-7�&0{��'��5��|��l!���o��# @Dq �{��T�(Р	O�}�C�y�- �y�<�� ��V�W�� �q>��f��$a� 	���'��o ���(��Ηۇ�b[�׹:��ӯ����GG?J�V		�,� 8�Xb�U�s�,M.0�4�|,��c��-6�{l#8�����\�4vV�Wy;���kj�$�����> ��H�� L�N &dHH�"e��Yg��,� Bֹ�	��K�P�7��ʟ���T,҅��7X�I�C�r�=6Az���bt��:�uA�������29Qk��Y�b��C!$E	�e��"�.*(�c�G���C*Ov`F�0G)e�b�g @W9 ]���i�3�5��(x�� ��E��෰�%r)�b  �' ܚ�T�yIh� ��B�s6��@Y@�9�2�y����L� "�(k�;�m>I�o�E�g�o�5�(��s�g�"O��l��EQJC���Sd@�!Y��R&�	<:��\��5DdF0>ЄU�MRR�q'��W�8�9�k|�3�d P"����:j[��-�0�h�ݣ��
��yI瑝�װ���f�Z��%-�      5<o�,)2S���3�;|�&O�1A�t.Qg�O�.K4�@�؜�9�	G�}�;�P�;Hq�!9j/r���?=J�&�<c��1
*��f�c�_�*=F"����S�
�|di�c�-`��\��{D�!,p�/������`��u:<֜ʎ���@��Ro�?טI������K�H�\��3�1+�+�1	K}�%`�k%�!���؄!dl�]�=���� !�=r��6��� sb2��11	f�!h�@�d����<��(u�t>�G��@�-=�͞��:[��Ep�#̢b���G<���a"�( aGAB� k�< v>��	����u�@
`   K��R>�,\��66y�e&��<�}ڨ4��W����#w��G��Y������5���+|�Or���7��8�M�Ȼa"��2�t8��,�ɐ[(#����O����&0-����eT~�9��e���Aa�]��x�o�Sh��fA��#)!P DC��:�x����}��c�܋(D�
S��Cdʘ ���6���ns�����&h�A�sr�>�O    @ `]�hȈ \���I�	7���� Px0!:��9`�uvyח�N�PIӇ3f����;.W8�iZ2 &�F4F'��Q>��1�$3�eV\B�̘0��u��@��H�YR�=b�`8"���ࡓc�۹A�:�2�tx�/q�ͩ�t�f^�s�.r%�,s�U��N�%>�~6�p�� �"d	�i5q�>}�V���=CA��X�{����{��强���� (I�@�>)��b��$i�����G�]/s�mzN�s=��0v�a������N�AB� �-v����X Bd� Gdڝݼ7z�q�"M�Fdȳ�u{>�R�%  � �L��0��g���P��`�L��7{��@�R�j�pPcC!�<1�%.7���ֹ��3�AP���d( �8<J�~�#������1?BFǘ�@!�g
%��KJH�w1X�M��*L���'����\��
�D,�B|�_�1ƀw�6H4��p�!� 
�Q<c��0dx"���PA�p��q�]^��) s��FF#��!�� GPx�|� ��:5n�,�068O�{��l1J�<#���u�0)�hh0�{���,�(��إ��e�D$T��ɧI D )j4���"=~H�L��������,�C�)6�$yx�7X���O"��@r�+ �hPTR�����,�4   ������v*(CB�D:���G����쀣���A�Pf�
	���		ȰA�"���e�.	B��p�*=�L`�o���q�m��B�c�&5N��h @�+�5��7�7�N���Q�xX���->ff�X$7?�ZH�����U0.:[8T����C�XB�o�w9�����d/4}j2f��<�F�ϻ9�GDZz,�<�� @ qX  n�+�$g٦`��R��W�m���X:z t�X"�@  6:0%�(D0�L�,= '��������lW���/��oeĒ%�mn��1�6S"���NkӥMCɈ��L`LF��x"�£� @~��3�\�2 0$�< �[<�3G�>X�@�â�
5�Dd(R���C�i�tX' �G`�5�pl���]d��o@n�����e�
�`��`J�e�:  �  �q�-*\�OB�)*!'��'!@P�s���enc��.5�� 8��� ��ņᐥ@�=zd���	 �b�;b@���o:�gB�EEAAM��X�gc܇��<@�PQ� �BL�6Yb\\�4IbPc�:>I4�hH$]���U����0L�o1'�#��>tn0����E�Bдk�yF�P"�	B:�P>y<^c��]	  H ��Y0�,"ǤLy�1�I�ɱ�)m���!StLt:�cnm�9��x�C�Y>�;�f�x�N h3"g��ʷc@!D����Y
�����ѣ���s��`E(��@�15Dz���АQQyƇB���SDa�_�mf�B�K�ȿ����r�ms�Y�r�s�K�a��( ��G�����1aѢE�w�$�b�X �(�qXbB��@�1}��s���N�O��$& }:�d�`����X`�2�=� ��I��"4�Kx6�X� ��(��h�@> `$� ��x�+��~���8c���ё�!r�<[� ��},� ��TȓC��5V)P�a�WAh����Cr���_2�(�-B�~�_b�8�0��q���آC���,��Ȉ) HB�Q�䈉H3J�>M:���q�UvP���g �$�K�Ӵ�P(�H �اM�-J�$y�@` �>׷�$�0�IJr�I�>�;i\4L��}�E�`���B�)4 �
	>޲�"Tbld�1EA���#�[�>���x��9� c�ѧ�=n  %��[)I� ^�_�K�:�}��Z3ΰ�/����8f���`(
�Od�E��hȄ((`,69bL�Y��{�3���!^O�a�:�I���iX�2�6}�:9&�BX��cJ9�#(�1#1� ��9�x.�r�.y�`�у��I�!̒��#�hQ#M��>y��p�<���8�S���=اOP�0�g��Y�����l�8��%����%  	" �1y.�q��<=R8$z�Yc�9]"^d��ё$��p�U(�h,� ��@$�Q�'b�!��`p�a�q�)>�E��(��@"(�4�� 
?�.Ρ�p����&�6Y&X�y�0�%M�&�8l�����{̣�Щg� 
C���'I�u�21** ���}%��⢒ p��	i@�-� �@@`("">���a�Ǆ+l@��Ĉ�E��`��\d���<�y+7x��70�6�Q�d �1吂m�
A  �	�4����&%�C�8,S��`) L���2=�AdȔ�,.�	��>�9	�ED��F�C��Ye�O���9�cn����9�*iX�C  �#r����u��1�T�&SS�FN�dBK�
!�� ���O��w9Sea O�% �MA�6����I^�v�R���IB� ��A���oj�s,��rLE�@��&=�ϋl/�0�i�tD@� ,��/c�� x�<M�w8�2%�#%��#��E�
����"ET�܅E�k�#)��)(}�8A��0��&۬�d���,��T����i��O�-�8���F�3b���&����i	l(�.]Ҹ�bR�G�a����P@#�A�$c��d��r��ؠM�Ijt��J� �!I4r���:�F2'O��G�Qe��u�)90�\��c4(.2�]t�8'�^��M"��/P�͔�)�>Ό�)`��>�B �	��f�#��bch��qxf�(�D,
r��
�Á��	�AdX�Nʔ)5��	�1�g��3�4�Dz{
�#����L	��,��E���-�%L��1���@0D��<5DICæf�b9��\A����E��x�3J�L�M��$ �!1�Yֹ�)(U�`�i.�JD g�)�H�<�����7���c��0J C�h�"Â��q�]<� DB���  <����Tx�۸\�M��O�l�̈)1<.'(��"�d��$��s��A�|��I�1�T�_���2kl�r+ � L�b�1	�$�L�hSATt8�@2� zp�2H�УN�q�(��8�@R�Aal )�%f�6��!�0
1��;x̢S����,�3ϛ<M�M|"n�"D��� ��S��2���Q���$X��"� �C5n�D��:
)�>9dr�|H	�&<hУ�M6���Y,g(��M�p�G�<5}��#��/bp0[�� �%�<�8��1�`H����i������ ��,�Yr7}F��9�2""Cl80����`���ybx0!�&T�,0�<�Û��3����	C�5P�N�!`q8�D9KFΔ5��F@��G�C�H�`���[��&��TY���
Ӕ��c�K輋�QV e�.:9(1	J<G�'Ё<(��k;����wҐ�0(7�Y�i,	L��H\g�0`�`A�U �2 ����Ur��e��c�tX$�1Os�T�2�Qβ�'�@��Q5�h�C��yAq�)��n�#|�6��!Qc(�p$c������eh�C) ��+|�Yz���5,�0�`SgL���� :1��N�>���`Q�ט �C�]V�9���A� $i>� =*�H`ӣ�F���<�� h2���M�M%>&��CfY�M^%Ͽ$�$�=
�a��l�Y�l�0��v�*��0k�G^ǔ��<o���w��p�Z> � �ϰ��XF(	�� <����<�_"	�$���k,�X��GB�f�,�P6�G�u>� Ć�q��<&�m.q?/�n�����]�1~��e���|%��s����h��0DJJ"���Eia�f�"����	OX@@0B`"  ����8�&	w�%��ʋ@�3EJLAG��9� r+C�G����<��GQ)/�<J  h��ǘaq�0D �,q\e�%���/ @��� s�9��(�x�o��%�#".�k*�ul�x`���|%T$�"��cHE'���Am2� �P����L�D9��Ϙ�)�����8�G�@�An����W~�w�4;l�����A(��6-�p���̣�h�Aa�>1;��F�'�" �s��'�#�b�ApT6�T�D`B06�A���O�BT, ���O����-�2� �:]Br�.*#F��*�!�E O��C١xf�&�`�g9f̈u�ǐ���书&�����(���2<�%���`(x�-^OÒM
 J�ۼ�_!BB`����%��Ȉ�2}bV3�#�c.r�Wx��s��4�6�a�  ,����EH �@dd(��p7���Q����`(0��
"%�$�15���]6 �!�SƄ�C�1:�41��O����Q<5"��+��� �c�"0@#��j"��Ix�3��lq��9�R����&�,�����%z�X��*�T�@؆�	:��z%M@�B��*{  �ѶK��AH��h���I��"�u5 �B9�G�b"&(�4dx��˭l�.t�I��H�� ����v#z(�8��$6��d��"�	FX��:+���d�BA�A鳌A�Ga @L���a��� �@���,p��C1��P(� �L��  @ L1y�l^��c Et >�0�ȔyL���!
�)s�1�p�ˈ1�m*.��LA���ls7:^�{I a���N��h�$<��P�9�Y
 �4< # �5�;2m4Dv���&K�,�.�-���ѐ�`$>ɜ�I�e��"!��+Lx#����FI4x<�a�9(	CF�!Qq�G��zt�3����M�|��"  \H�\� P0����X'G�.=8.��4.
�Y�Ђ��H �0P"<* ރ�����=|��^P` ��h�}>��!_�,瘲�JgXBp9`�"� 
 �8��AE�!B��	X �b�rA@!d��������I�a ew$zd�;��L3�Й7���1� �T�1���^���t��s����P^�3TQ<$�b 8�}M\c�),�(B��r�I\B\z��1@�,�p��I�c\`�{� DCA�<G�}(:��@Ch�CEbAX��������b�B���%L�
8`�
1!Y�'`r0B|Ι� !��P��p@ǘ3C�{� k	�O�|4Y�"���X�( 0�p|�u�P�	0-%! GIN�[�}~�o�G`� ���0��59 f����	�Y Ӈ��C�I�q�Ó2�f�K�a��?��}�W��$�͌�'�X�a	 |������ �)�p���[Љ��"�rƷ����� �hb��m�$E(=r�9�e���,2���iTT$1@@H0����� yP!z6��i�s60	@�D X�o3��0DK�B(��0���}��c��\ `H���p�?F�p��y��J�� 0���	 �11I p!`�p�	�z�|8 (5��9�қl�V�O�D<9��B��5v�3!g�w�� w�'A � ����h3M�.�4�'I�124��g��� ����I�=�X �l��S�  �H��2���	`��hp�����A��|����Jq��  <) !�k����:�"�1�g�G��Ye�"#Ø�	�a�ᘆ-���7�z��Oʣ\�2o���! �HX��ѣG�cPBK�R��:=^��~��� � `� �8Z����Y� ⢐�&K��*�.
D�C 3��
c� 0=@����\��rG� 
�0���9!Gˀ
�-�A�w�S�d��u8�)�@�8����P�y�O��y��[84�� Bhc�����p$L���� �4�ܡ`KS �{�N XVO ��=�����!$<�I����r��  ��Ҡ�)!c����I�� I(��  蒰�9
(�P�� "L(��Ν�@
@���V�{�B@�\M਀ ��st�0 ����ĽL�<��|��K^:[�?��ӹ��7�d��0׸�
	R��U4��ib��#��@@  �tI` �|  0b"N0�$ �!I p�sL2H��������t�(����ߧ 1"):��z+hpF�:D4Y���`���ː5��0cܼ)�4��� �;   P np���D"1"��aH��$���� ��X P���;���HX����<2<1U<z�d����Ȑ�
}�cN�`���:N�� ��X<�y��`v	 �&�4gy
�K��L^��0���\��b���qH���`F���h(H8&!   �BP-b�E�dI/	�b �x���"X2��s/%����e��b�m��lR�`�"	�2.=.pNF�����JA�`(�pbSD�����DhY��Gb�9���I�4�J���!��D�'��ṋcTO����!���37Ͳ��	�o�P(��H Lp�*�4N�`�::\8	���h��R'���k�"T:& ptT @�y�y0�Ą� t���MIB���5���q�{x��s���
�Pg�2	62�gy�!9g�B A$�3�1�)x'Bh�dH����A  � `��o����5�D���8�%�L�0�騹�e�x C����.��b	�R*�Ƙ�1���H 6�L��px8�,؁X $ 4��!��`�K�DM��	E ,B����tP
z��;�ڴ�}�[�h�Y#fĄҜWip�n1K�_�}���/qD�#���gu��G�#�W)��P 8=,,0>.�si����e�<��%�f�,`x���^�Y�� <%���4{$:�[�v֣ɀK�P�FF����F�óJ�C�,�"��ǁ��CA�H\�
A�s�;��u���0��Z�i����'W�Y�i>��N�H�ý��%P�N���xN�t^�&c^����'�g�v��}*��E4���*,a�%$�6�t�g�-�$	i�c��f�Q��d#C 8C 
0 ���e�i"�M�p7�O�
���`�s}[9� 6�n����N�b$d�����F�)�8c�A�!Cxr��"�c2"A%BeDC�5�*�ճ>���7)L��������;Lc�8
S�l+j��A&(g�~���-�a��ع��P��*�."� �tɐ21�*"6Cd$8R ���L��@��&<Eu�^-t����,���pxsHi���1e
6�o���&p�<k���=�\��l��4q���+F0�:�y?���,;��Q��"ll�`�_��2w�K�:���+�(4��D`8�\���
=z^dHC���� R- �w���"<�V'��P�Y��A�A���;���-<)2��M�I�I�����|ع�e4J���ɰN�
!�~F"��&� �#@P"~Sa�V����I�  P|�)R�I�O��׳�tT�q/3�:�l�<ǀ/s�ۜc�%N�œ��}�p���wQ�2yt���L����$���1��Ĭ��)DX����c怂s;\g� �Hid���L��ٞ�S@�X��8$;�$#NO�yNg޾�ins����ٹ}�_eʈ��#ܣ���CT����D��9c0������..":HL���6�&��P�4�<ck�����]�/W28��h�a�'GƊ�P� j�0��G0��EGA��D���7Yr�w���eĈ3���Q�eR �s�O��Q1%C�"�����Kא3%_գ�G+|��Ӯ�PC���JV� 6�YBa���~Ik$S�ܴM�3[qI?��D��7���,���x��Y#�N�*#�G�Kdl����b��s9RlP#D�00h �� 1�����DOb~�hy܁��!�!J�E>O�ջ!�% "��b`n`�]L��q���G�N�<m��s�\�p��3���E���L�a�1f�"�b#�`
 �w�����P �
0,
8��~��>��a�@h���8GŒl������'p���]b�7Q�E���\��!�����T ��2��X ��v�"--D�G�fHF�	>�G�!����� EP`L}ܞaLˉ�&M"�0@I�{r����L��Pk�T��$
Wy�6)%&\eJD�*�`�A��Q��;�|	P�@��H�` ]�p(����'zWe�].�0l�ӧ�g����M����c���	�ݴ{a�a�����,�9���}rd7��D��#e��L�l�hh0��x�S��}a$T<|�2��!Kl���?ӏ�hإ�4��5EaF,@EIB��ɨh %Cr��HGs�7q?>V�d�r�}^��qTL�|�5>�G�E�Q6����a(�Y�n��l�C�W����E�&B@����3� ���ᖹ�~�~���6G���͍��١M�e�x����`1LPŦ�:%B42pt8��WXc�*�d0�2H�`�K�d�]��`�H�8F��<A�, ��!����7s>���-G�0	�Q0�Ȓ#.p�9'���'��^�o�e�]�`L�2`@�!%
�Sg��9o��J�k ڌX"(J�#N2�Xp�]~���oM�ǬQ  ��>�ۻ�q��%�x��[�*S��IX"�k���r���CX��0p�9b���
2�{�)]�� �D��� "���9��yP_˯y ;ٗR}d+=���2!�CK�	t$<��0�ǣX��!K��y�c���lQ���<.YR�P���,s�K	B�.	<.<� x��C�j��?�X2� �0�y�@Nq%G-��d�x�H��1����7�r�aְx�7�P���z{Ϛ˼I� Ij���hd�Kx���B!�`��6�XD0��F��HnC�Q�[ٍ}oj�0�mα�Q�F�P��(#$��D�C<@E�e�!0d�4Q�D'M�iF��ħ�6p�&C��a�!�����H8�K�J��3��L�o�<>������1d��5n��#���R2����lq��q�I�0�����I�>u���4�X&&�cʀMF���a��O�k��	px����eJNC�6O���͆�!��,1XA���<���� �DGG�E�s������D��X�]4^�&&'�0�4�A$T��8pB R� �V�{��|.e�ɺ|1��#���_��������jq��J8,Ā��lB�h��7x�=n��7I�\�!P����F�����$���)�J�'l?�A   	�	x&����<wQ��14�����
}� <�>jr�O@It�Dr<�>/q�ǝ,
�<.KTxMdy�)g����A�t �5BfH��.�	]b���8_%������6	�`0@�(8���/]����mF�	����y�v�@(DdJb�%��d��D��i�("�Q��e�da�8��2�ӂ3�
]e,*=\br��h!A(��:�s�#��"-�@��4���0�bF��x� ��x������A��K�`F��H׈L�"����Ϙ���f
GH�	���D�`��C�i	�D��21���$�e� �5�c��pX؇�6s����0��#�t�!p�g�fH��=:6���!rXL���:C�80����F�'�&�@�#��
�H�C(�D��y�zf�9y����uUM�ʖ�pH,�rD޾�i!�v#�� :j"%��I��E�L9M���]"SN��B�di�#s�k���lЦ�D�Y�I�9���Ёx �������������F�+W���y���hl$'�ҢM�[Yc�EHX2��>K�,h1�9�'ɘ����-4Bln��<�\t�q�-"�>g���B�<	$�x�qN��m"�.eRD��4��DG !!�z�s�t�CWim?�."�Ȕ@N�"b10�S���%�1%q�a҄Ҕ)�:���0���N�*�$7���ј��gNL�#$IHH���KdA��RU֑$Ѝ	�5 bA�9f�t,�H�a�休O�q�o.��1s�������D�G,1�b�CTlL��A�������:c���&b	L��2�\~rf[4��K<A��M:�YP̅x��΂-&"�@ #���"��Bd<ʀ�$FL���L�4�x��B��%�,.�L�!'(�D(԰�Ĵ	�!A(�냿�et��z*ڏُs1z؊�:,q�������a���$f\���r�g���0e��$�15�Ya3C	��!Y�\�bO����"M��(`�6=x8"x�����3�$~0�t��釻Т�.Yg��c�sC<D��![�1��$	hH�i@�E��N�q�
o�s/��*��� �!��R'����Pa�Q'�C,�%Nq
��@�;� �
!�!�V�@�<]F 22��xJ�6 �J�kt��4�(A��&�G�3F�><R���X%E��̰��f�;y�*E"�02D4@��a���K�a&8#��%IL�96�t����%���I�y��<v6�>{�` ��00��2W9`�yR��Y����R$J80� �tq��g��93B��6�tlp��gؠG�uNq P��cy�ƢX2ZJGN�6O1"�$�q�� ��0�Lç��	��*��%"��b�.E�H��r��B1�3e����lg�C��m�;��А�a�Ș�lc���5���8ϰ�ErL��uL�)8�PSC�d�9EQc�1���a�2!	�T�s�`B�#.�a�1���.a��ȹ�o�Q���!#H0 8"J�-�'�!>-��%�c��!"DFIT
+�s�}
�r�K*��q���j�-��L��9L^��2���إP&CI@��@x�P*8��18,J͔�}l�X�Q!(9Cd�`D��GqY 3�\�Eg���:�.�S�&I��d�
�I '�!ڬ�&%� ߄@�`$�$�$�e��3����p\$�nk���B����<{|��Yp��/s����9�2�)E&���&H�c�	B��p�+찌E�1=Sq�3Df�g�P���f}Ꝍ� : �ёގ�����O�D<�1c�لɘ�i����[\���� �P�}�H�Ф�M�S�d�C�2��g��t�'�G���.���������ɡ'g��a(ș��p�]v9�i���	!�d��3e�W�FYk���<���2�<`��ə!s�e&���}"z\�# S�-�Y�	�}d��cã��Hx���I��OK�!"�A�S��r�(J��0%%��a8$葃���g�K4��&x��1\AlS$$�L�O����U��1�_#�2��� 1�"@G���Ҁa"����f��̈́O�H0%]<S��w�(Y�f�"�1-�DPq��P��8�4*<��05C���
�t v�s';��~�g�"��Bp�����D��H�F���Fc�*� ����Yc1x*2&��t� v9�2�6�4(#f,���q9g�e�جqȐ�
���J���i�7�%��<�&Y^����#2�x�1�0�SrD�!W8�jx��%P�c���%1`P 2f�Dr�kl�, #�0l���V���`���xDb���O�I�9��,pƘ�lcP%E#�>M�a�A�%���8�5y���Idt���,��l�B�A A�)��$E	-����<s����~^�bD��x�� �@)�!ÃX�G�]Z\c��,��3�A� ���3�1!�y�è7H

�}�5�a���B��,a����g����  �72��Q��`x��(pvё$P���Q̞��q�wȐ&�BD��q[ T�,�8] 
��0%� ���p(P�Ĩ�T�F``� �$Hc h�aR���d9ɝ�R�B�#�`�H���2:���� "0� C��UzqX�DK��4���tD�eA J,S)�c���G��,�
#!Fc�E��cB�g��!�crB�bA0��82nb0�"(���@G��@$�`�������o�����,�68�g�)	!%ʄ� ���cÃIYf�Ŕ������ �B{��� ���@ E�򻄠(�D�DBP��x:��8#��_d����)%J� #"��!���4x�TA� ,q�_c@�M��8���"( (	���E��X ���Ӧ�!Ry�2.BQ�$jj:�i(���@8#<��<a 
� B%�#d�j;M�]��!O�aBL���%$�
 08@"�(5 �XJ
��G ��q�` P��(2#Q�Ԉ1�X��8�dK���c������K�z4�b�`�B���6 F#j ����I@p0*?)���ܠD �(� : a)Pj�HCGI��#$��`P�@0 p 0#Y�<d4�ȤpthR@e���07i�	��t��ADB���b�%E�
`�$��H�0,8b���H
��
#3�mf�e�H�c���sD���X�BY�d��8, ���.B� ��� ƑHCE ��a�\e��
OC�-�G @� ubj<K�J�!2�!k|����sZ$�	�(��0�@�8����%9 $��l] 4,Y��S�tcX�pD�#H�GC0q T$
}�T؃0�P�49�!	|�Q8@�A��J��|@�3�b&�1("�La ��� @�� 4tB�  $�@�08	�4؆3�F��СCI@�	�di��P��( b #` ��1���&�(����D,�����acI�`�;�	 ��	�HI �@qALH��"?����&�# E B���` �*@t�/�@��   ���2�#� B���@R|D "	:ElN(�IĔ2*!�G� z� �|#�\�H9�(�d$��P  �`%��( c|<��b��`���`a
  �#t.���@�Q���b�H �J 	`�� �"$&R� �):OE 0���BF����H	 � 	E!�@E �0"Tz�`����d�7����$�$
*�l������ 0:��cQ�DB�A �X�)� �
�p),|\
*���$�ч�g��L1�>�1� z$Y`�)���G'PB$.  ���� �P���D0(�!��T$2�y�qF
�B����!D0x"T|\�R4JT���r�}怎�dܤ��0����(�X �`q8�D$��Ҡ,��9-��� �  � 8" {q	� ��pLi p�,%m�T�!�(@�����!��P `��� ��EQ P1=BK�"-	�P"S�X�&�l\T��@��
Y��>)�C@�[ d#�0@�D]"%��D�9�UЧ�C��Ӓ @H ���O H  0�ǁ��c�@��H: ����٦B�QL� '��JL�.!�$� &B"�$@aP���� J�4V�a��@�i#�( Bb$�����hD4!(p(,,|j8����N�6.*�P8�
B� b u7���@ A
 CT�9 "D��O  ����@0J�MB	�" E��HB�uj��ؠ��0FH$�+]IGK�á8<��$ A(�`0�C @HD�#áD: ��0"F��Pd�6���lSA����#b�6L@�X�&@0 �!� ,B�  03�PA!�x���R��X�0�1K��0%�x	���� 8$�D�A9�b�!c�l��8�T!@ b&SZ�%1̲DGG@ !�P~��P(  a0 �ÇN���A��
�#�E���(�h\`�#4P�إ�?Á#@ 1G�  &�`DD �"5��� B ��A C`($�c "8I�X'��G`� �p�d�I�4C`�Dt��sN���� ��PT1�Mh�� Q!�d�DD:f80  ���A`�*��G��H�3N��6�[,��U!�0t!�D���F�S� !!�aV&�ʘD(
c FP�#%%@���IIA� !�0u:8l @�@�EJ͐D��,� <L`a A 
 B@P @��Ϝ��|�� J��}r����@�M���p,!�a�f�%��Q��� )A(BB�a�<6�D��L7�;�XB@��A�a΄)-�;��8rJ2�� 81�A_`Ls��QQ0�ADH��H�i���q�uz�,1�$0F&����$DB  0
�9�� /J�(�&5c��ץ;p��H  ��z�1��S���(3�Q&M+�g�`����B�q�6��9�3�㳌�1J88d4 9a)
�H(���@8�j�6Q�8 @�O&�!�"vh� @��AP �@
���6@A�ab�`�����M��
`"�@d(
�(���X��t�e=e�- @ID:"F�U AX
t G��D���o	�7�!��1]��A��y����y��g��Z��#T��vF��`
a`� � $�bAP �h`Jz�fD���#�O����a�HPR\B6�@ a�:�|���F���!��,,�(��x��(	Ǘ��B0&� ���qvT=��(�F�8"�(�HG�6y��1pp�h( ���8E���D	Pd��h��D$��٥|�
�q��2
�"��q���k�
�H�'��O���j6�1�U�^<��o������y��wR�C�8�0%	$��Z��6�t]z����L�����W���w��%mTxc��rd�. �`��<��	\$i�	�8�ɂ�q0�t�ʹτo�����	�SJ��Crm[1Ԁ��M6`���E�����(0B����	9�R%��" ��DL��S��$�7s�m�˼�KaYC���裴"�-��2��<'���7s��<�mNӲ��D�T�>�8�*�DK3GȘ1fČ����F�<C06=����3b~�,m�<ӤM@�6�͹z>�eL0D�(��M"�.�9Ð�Ǭ�!��#������Fa�̱dOGd{e|
P<�1I� A0"*&Udx�(�h�G�F�	�f�읣��h�F6賀Nz�M$'� U����b��IE4J"� �da�AmF�PQ�p�A�:�~�����
A"�����CX%&	��3M��k`�U� *
>5,(*�!�u�����s�xZ�#�0�Rr���>>ȟf���� ���O� ��
*��^�>�D� @Q�3z�/�#Yizp<(
i�L'�mA�I�����`J��M��H8
E( 14�L�-�� ��G�{7?�Z�Ō-�A0@!GDp� *
҈U���xL
`�7�M���B�@bB>&#bT<�Xjj,���<�)"�b10K�H(
!DZ�y���д1�x��-��U��m�H ��(p(��p��5�p7;���Y�%��W��'&E����	)9l8x� J�X@���.C<�@d���D�`5BA�9�����O�w�6��a��,�Y�@�� Ns%.ք%%K2��E�����6E" �C�@��
�1��a��s�f@rj�8���� "@wۓ��.#Ok����W�:S�YXx7S��$�c �� � �!0@�Ht��hH��&@D��%Ϳ���  ���Q���~�᳏J��Xݞ`��X��C@ ��%@�En9��6V�h�9��[����7qD� �����A @���3���42�*����.����Ң�=�C�iT��,���DH�}t%8��J�$�&}
��g&� Кm�����y>�
SB4 � ����z���) � <x��% [�K8  "!�FcFD�M�q��K��c�a%���B�#�c2.�!���f-/�����K\f A`��b��>�8�g������/N��0������t�ߧ@F$��y���2�&!):
Y"�d��M�\�G�F'(C��	|+�E@xU�U���:�ؤ���PFQ��Q*��kƔs��s������k��#~�]X��%�G���P����D�}�ht��a#v�O� 0$�hd����q��M�@�J�T�0��`a�(���� @`8��A�< vm� ����ɳp�DB �h�H�Q�5L"���'�n��.wq7)ZTA�����)��#J0w��U���z9��žX�1Xj� ��$���r7�� X$=�P"��8mb	���%sZx�Čb�O�UJ�	�'�O��-�D�8�}%����Nޟ��>?�56�(��1%U �(DA�g؄@  &���`�������b�"���� ��'9��2�<=إ���A���i��� �;�������'9�� BQ�#����9	�d�.����\���`��������Y�����`���q����P�p�<I�E։l���@,�S�s#G�[A�K����y�>�?��GF��� C E�� :��d�;��� ^)�͞��?"��ÓC��5� s�',1��,&�ha �D�"����0�_W�䁦�h'XH<UwV,��H�H$"(� 4!>�c�s��y��P�9�uj !P�`���`�Iޥ�
���9Ʃ�~>@��%���^��4	�0��C�`�5.������G"��ə`H(A0��\�wbtN2��(��'��k���d��7B��GAA� �}�;���8�`��9@�:C<D�"�>����©��ɓ%��h `|� 2M}n��'�Xn�;@
�5&,)(i�`�y �C( �`x c$$ �����8 C�(�p�'�	��>�������SQ#�0�A�-�(���  k�%��/u?�<����(�W�w��@L���0��|;��<?<�S�1L�d�q� "b !>*�9 �I���`���c���k�y�!��2`�M�\ľ�q�۹���- �
E��j}s�w�NG��C`ee!���>}*����ķ���csS�K{ \���w�{p$ 0�F�ctB���9c�Ɔb����!#�0e��-�s�n���}�IK|�%�!P�I�t�����D����pBA�;�ȃ�����I����� ����AH ��N�41[DD��&:�X ���4��>��h� �RDG6h6\��D�z� �)��� �4(K�#$�D�!&�6# �"-Gv�$� ���&F#�������鑤H���1��lh�m+TzX>HT�d(aD��J�pf|�ָ�&SF�L�C,�x���-��� H� P���7�Pf� "&�G�
'LIɢr/�I̸�2�$�=�qBs5tv.1�� ��  �82����!  J�`L"�04t�����P� ��[�<�O� � 02}0*Sl�p�;�`���ȯ�wW~]�e�]�X47�d��p�7u6�L�Qm?P����I0� � ��Y`)Ș3���C�@.  �\ ��=_a�Bt HBB�E(�`V؆P�OD�<>ƫ�,���r�0-:M�u�߯��m8 ��0A���HDQ�X��
,� �A H�I~ȃ ��r�)�J��5� PYЦ���g��I��@��� ���9��<(   ��F�d�T4A��͑;M������ؤ!�A 9�+�s�8����1S�#9 ���)�dF���A�M7��)\� �:���3�QB ��{��� (�Rd�,�EN�D���	 �q��Ahɩsz�V� ��'CY��V�P�����ů��:e*x���	63�T9�s0c:�� EŞ*6}HP�S�  HXQ��z(���C	H$�j0w�A�!�WQD`�]�O�|��Z 5�B�[�?�'���������*W8��@0�����*w��������'Wrf ��;����Q!$�ж ��2@���Xz0��PZ� �Y
ѣ#�P��|C.hz�\�R��6����2�8C���P"��	2ks�'�x����T���@Ŏ���,�����cP�]f��b����@G͜	G(Ȱ(�Q` (D��=��-Ot��]�Sphq�7QH�!P C2�m�19 �c�u N�c����,`�A�eEG� �-NQ�V�| ,����lO��zti<%�8��P��@��*��A�
H
!yt<<:02|40I�9��v `��8�.� ��;4UR(�B�8 �AH�� (1�S� H�c=K��j������}�� C��`0	�L1�a 8�*@d$����qns/�¦�ƥ6�p��� �,Y@���VY�ԱHT���$w���B0�(�� �4Ο?򡤓�_` ��.B�]`�U\c���q�H0D4��	'Ih1��4?��y�qgi�ꅳ�V��_;9 $��0@@�d�s�Ѱ��E` ���������习�)]�������ӦF#�a 8��6:3X0Bn��
B��/��M����ˣgS�rO�MR�g�aHX��ئb�d2�!gJ�6��S�(DĀ�%@GG��%�p�G�?v��?n ��ƽl��i�R'��	z�D���!�B8a�}2��  ������Ja��5)'|�L��(Y��]���ɕ��"tQv�(�E�|�U��N~~�� Y���G�I:8��6gi�H��a�iJ��y����ۜ����P4�
{ȣ�a+�@d�<���Mnԧ@�5F#�%pLa���8J����)	��?�
  8 ��~�Ή�Yb&T�(�Qr�%��I�a��w}j��.���s �e  ��İ�4c3@��	3�>��sD�%ztLhp��c@�Ǥ^��Tl	ig���F{��D��[B����U�s�7y�|0��RN���0 t�,�+�-90�,  �� �p c�!�)��@���f�a���%��N�$
� H��]������"Fg
Ff%���S���N�	K�!r�!#Ɣ�I�2����0ӑ���r���x<��@X*:�l���,�!�� Ob�X���}���B��p�ϻ������=�R���P(s�0��Yj<��Y D�*�Q"����n����� �"�=A`z� Jx��ݬRn��	�c!�.C(9B�fJ�E�����������(XD��($�i�@�M�H�218K�m>��.cL ����TKc#�`�b�I� �R��V@�cN q/-��aq�@���R�Ѱ�">n�@��Y����79b�y~�	��Ed��Sd6�����[9�گ��c@! ��3>��,�ل�ΈunF D:���9f΀"_���	�41��y���w�k��.�2}D *+d�B���6�tPy-� `�k��-�!"�����`<BKF���"�dDJ���s�^���#�\���m~�7�`�����Y�J��a���)}|��w)!�]�� � 0f�%R�g�N�% �Ȓ�I���yf��E� J�w��<�s���̡�#  @�����E��G�<5��r D�
]bT�L @�
`��)�O1
E
>���@(�԰���z�G	 �D�mzj*@���>g�N}��<�S
� 2�jZ4�\�	0H�!=�n�*̲ǯ�(�P��R��H�+AV Y Y!��a���"c^ϒ��!,L�"�� @F�%�c����4S � �08 �U>K�_e@L��9�1�I�HA�����}91����Q �P���1S�D��9%�
� 	K�cF�U���s�R��xxFUM�R��㫼�)�9VP䈐�(X@*�d����l���,���v��{�e�MNEG�a�c�8�
� 2��z�[���\ ������|H��2��:��t�9#FF�RG���?�`�
"`�4L��4�j�.:�e�S�g�K|��c�@P0� �`�-�̇z>�@���P���@`�Ӵ���A�N����K�D@u+�PU ����IC_H�#�T��9<Z��p0�����0X���iQ 葡��=�����贈 Ðf$�ǸDL�#\�6B.Q�g�U3�)T�c��l R��� ��,  ?�D�h����O�]�D��P���Y�H���_�%�e�T�0PR�����=���
C2$��ɑE�45��������$!����r������1�#zx��P,L$"��|��g���M�G��F�WU�A��/����:���q�4�ƧE��%`�ȿKԒ9 �A���)F�����'Ñ�0AHd�D��"����)���&o�Q|n�!��:Z��� =���2��a�<]����"� �,����G;3��*v1 �[$�X�)ڨ��0�`�l:j�(�#�H�N�p��"����݃~��P L���x�>.�I� �S�e�qn��f�r8����ӄz1l P���4�w�t'"��X�G�:�$Z8"��࣒F��c���!<L  ��A`�M�

m���0 F�URT�� ew 3P���<(��P $i1T�q�	n��g��9�����0tt0�SRB̉,�M�]�|���� (� 0  0�)Ͽ��l��e|^�L,d\&��f-�F`�k|�g% PN�/�ۜ�=��E㹅�,��8�0�c�2�\��O��?z�) �#� ������U�*�1��%\\f��27	o�{$��R?�_i����s�zk���dxj:jZ�!j*,��a��g�*>�K����"���\�lG�����_�����Q�@`ʘ���?c&/��= qU���e_@�y_]�)�cPr��U�HtD q��qb�� �@D��&������yD- ���8���	1p���)0�>�L� 	�̢�E$* !�4��Ҙ>����߽v��1�`	��ҧ�gQ� �
!"����%>ˏ�)  `D�!�����s�7�p����x�� �� X���c�q�@� 
F��(�\���}#X�Q" ��P�ų$'�l�0[|�oa�K<dJF
B���^��=D0&G��%Ħ��<̛ 5' _cKd �?9ǃ,h�ih(i�8�&�!רi��-}���9棟��s�._F�!�@�  +T��c�]R��3�����p��`�{��	��\�*�ח?�|�9N�t�b :�Z��M ��� 	%gHG΄������p:��IQ�  ��#�T��q���.S���衐�`�K@�����@ ����n� �0yZ+_���#`"�'�)��# �=Nr�MJ2
C��H$�����,6��@!@�،�.$>3��S#�r@�*�ɭ��.�kNY�乱�n��F=~�v�_��ݘlb���j&8<%@ZP$������A�
(� ��Sy=vH3��.m� ��ǈP@4�B�)F�p����щP9�I��� �i:�DӒ�	�&kx&Lh`����Re�_�5��i �P80@ADw��w����W���<
�y; !8�xM"�p p����if0:6�$vQ�ǐH0�
HLY�)y-�
�&�2 �H��!s��������9�<!��F� �͵߫�_��ȿ�x��q�a,B �$�<G���(J�h :"�<��/���Ή\ �:�?Xr'"���?s@�G�,cx\f�D�������L����� E��x��XkƀH9�N3�R0b�#�L���F��� ��*1i,`w�����1�Ȅ�056i@l�=�F�<3�CD(	��Ð|���)�Bi�����yCm�M�q� ,�! ��d�]���	�x5r�c�0&1M�N'����s�Q��( �����m�@?���{�:;����\�  s9)���EH$O���&3|�#�@���^5Kx�[�ґ00B	X�"��cjtL�:w�� �e��0���@ �f��O$C�>���Rs/��G�1��� ��C����T*=�.��ӗ�����˸w�s9%C<��1�P��U&��i«�G��<��`�OiS͝"�zL��4Y��S ��H�������h}�����2EH�D�7qCŜ��!="!1^s.1$���o�G�s��"W�}tΔ��.O����2gl���	<��k>@�b/q�U�����c�Ƈ�w���`������B�E|u+K���Զ�ul�`�$��q���P)hcS�pTD���;���5�{��a�N  κ�ι�CD��0G��Qϥi,DC��UJ�O�f���1��z�����͝�{�_;t����q;��r/?�ir�\#�L1�i��ёѧأ E){a6�.?䣬�F��%Ǹt�g����t�ݯ����7p�@���T  �ϠB����	*v���?��ɷ����Dˈ2!�/k�����$c��6@�Š$"���V$,5B�W��X&���-��f��l��7���/P�'��HRs�nr1�l���'`	C�PQ��X'1$j�D� |�z��O���!,9��pZ����L���!��H����|.hG}���6/���]����|����cx��L��	<��@�	cX9p�0�E���l*������6�\�f�v���m˜����eN�IE�	�����<048���>�y���ɻ��2�d�x���~�7ӡ�`�0/r�` �W��w5����c<�Ș��M�6[�x������T����� }��e�!Jx���8�6S�s�q�rFH
A @$H C�,ax��r?�6?ҿs��-����3e�"��d0 <`DJV�R�:g{R��	�X�
	$�����g΃���%�����)�8�   o �-  � ���y��� �Y�Z*�6*{̋8K
ZL����K�/4�Ŧ~�	�:J"Jd$"g���Cz/����(� *f�1L	��7�v�&~��l꘬�J�9��q�s
��&Q�s����  ��(D����Q� A8�߀����1���>�M(�"P�l���T�ń�nIDH(��a�WZB�_�,���g?~���}�~�~�u�x��!{����9ń�#t@�N$�;�����8/Қ���eN���:�=����=�#�CFxo�*�bΜG����ǙBYq��ψ��l�_i��w("VE�"�؀�\�����Ѳ2O7
:< ��Űǿ��p��|��Ԙq�I~�������:�4	Eq�Il�FA���C$�������y�3������<f!��Sr�A�ԀC�Q�(�E.�IG�6/��ѧ ��LD�H�1���#��YJ,c@�ņ@@"Q#(
 K΋�adU�*���r��9��1���$+
�
b �*��$.2�fy���ar�\`L�%
��#l�_!���ef�a� B�� �!��$��"�Hr�c��f�� ��I�V<ޜf��
	�  �c�D��BL��ċ�I����#�<9��b 
s��)f����� 0E�� �T�Xn.��>��p� ��|�{��j�����L,�;P �rĈ!�����Ij�k#ﵞ��-�Ȍ%cZ�`
dt,���D&pg��(� 9%o�_�'9EB��� ���K�b�����^r��0�0 a8���3`NM���9v�f>�g�����L:ӠD+�����b�EW���'��T�a!�$�D�x<69������Y�;�%^CΔ
 3�[�E:$�\b�.#z\�nvaC
s�;�³�	�c��&�aH �H�x����X�C��A�5�%�E�%P2e���P��2�����<	`�d$�����#c�Gq�%5���"Os��#L�q �`�AH	���Ȁ/��H�������O��0�lq�-6��,H���  ��)e���`@���χ�-.r�8� � ��`O�&'x�`: X1dōL9I��x �, '$,�����%.2������ H��cfE �`��8�X�5{|�-�#���6(pL(a&0�GG g�!%ÓH,`b�m3J2�H��E��x�
 b��|��PJr�c��x� �X� ��.q���4O�:�|���)�������X��`���,K�.�����B"aʌ�2�M|�9;� @\9=��)�9Ȕ���2�� 
����\��x��RQ�,9zT�Ì9E:Z�c7 aq8!"(B"B�:�O%��,�C�F����],A؏r��=R�\�Y��#�X`@�ָ��I��%Gə1�u��a��L!��C� �4 ��b�� 硲,�s�g��|�cl2$QS��f� A��,7wN����&�J����y�ȵ�0��"1��9:f0
a!@� �`!e���7��9+̓�4(�  ��q�\��hi�Y	����0S
j*��������gzz�=Nr����K����aP,� x�8��H0S�8����I:�C��oe
P��,%_��y� �� ` ���=���ۙ�Qv1� ��?(9����0F�x��� J@ɨYb����0 �0@Q&b!"� "�@th� �~7����Zp��<ȗhs��'  ���"�Z,�s�/�r:FD�Q�����>�	&(,��M2αC�Ei`$!b,	$���Ctֻpd,�ǘD���b�Y���8H��Xa�.��LY �N�e�g�PRr?�L�&�1�>{, ��� �JC� ��B��:�l�ɲ�ɲ�r'���XH�@Q��"2Z�HQz ��y�8K�1����q�( ���: @� �`FQ�l#��b�.��y���` �%������i>ϭD�� �������Ș�EƐ`�}�f��	ָňLŜ95#L��Уd�B��9A`L" �\��� �<%OS���e�בX���`Vv�(8���W9ϻ�`^�.�2���a�(��v (����@(	,�<���"(��Q2s9m�lƀ�C�]X>L�y� ���ѥ�� �c���8b&c	A�px��re�m�2��s@�#P�E	(BBP aEQ&<�w�d٪�dk8GN$c��+(�x{`�0���z�
Ès�r(�|e>�6&0����K���#:�D�s�h� !��@&Q`h�E��K���b �,�e_�*=������-�`P  A �(�pH�Jn��!�:.r�	�z0@ �!g���4�{�kD"��BY�&��tG�tY��E��I  �I<�ֽ,p�>�8�.bRm��c��!{\���*.r��K���:����5�L9�9�0 ���I � L�b΂��	���cf�C�!!  0���$^�f�f��˜����'���8d�N��ţ��0��e�:d�{ �cE�a��(	`	�!'\d���F���U�  ����Ǳ���0�n����y@(�b���6���nS ��ҡ4<  �Qe�e:'�W��d�/wɾ��Yr�]F$�������Uv��Y짤�$��a����:���b3''�S�3��Pf�(��i�$"�h��d�6��E
ಗ�VR�d�� ��F�,�Ht���"���C !PQq8���(')Y�(a��bP EPˈȀ��l0��#H(�`  AI�DQ1�f�~ D�)����l�!��͜İ�H@*-+wpO�p/9K�g�����9����1��a�#�rĐ�t(�!��� C( 
�D�t$�5�k�s��9  �=_� e�s��ɋ� %�,�(�m��=��}漁��3$��>>J�%��ש3k�X��G�%��4^F�ئG��E��c�)%+�laaj�^I��B���~ Z�����Ai�3�  <JM��,�p�<ϐ%�ؤ��{�`I��|3sQ��:��=���<�.��C���0`A`DC$P��x7z���d. ���x��๓GQ�%��&U��>����
��\�Gx:��}�ۀGÀ�) �r�A�1�e�GB <!c�А�@R`,E��D������D�M�ը��D� ���A�6%%�8�[y��p��1F/^�X�i��eZ,}�8I��%�s��Q�(�>D�� 2��F8�"Į.XH������"N�D�%�����'(�D c �<���(x�7�6!��8E���0�3D1X��3���Ed�Inq�1�u�2`I C�)9���	
*&�s�X��Yp���I(���y���c��Q�C"Ad  ( 'Bx������s�O.��7�9"�l`Xr���I���(��=�",�$=�T �
�쒱�6�dDV8�a��0`XbG�yN���_4 B���x: 1X  P�����n�r/��gX�OCAN�<h1tZ����"'x��8�2&0`�3,�eB�#D��3��AHN�Sy�e�:��9�-�� #�O%�2U [c!�JTk��wX`�e�c�L83�T8*��H�ǻa��� GLq��a� �>55��8l�( �g�����Y^����۬6@�\'�r����9�Ӹ�H�� ��Ő�7xoGvGo\�_�C:��`G�$˜C���M�!0�x��1\�����BD��e (� f��y�!��tj?�t`^GM	�0uAC B"��K��7s���☲ �X��i���af��1j6�A��D���X��G�)�x٧$�K�� ,��N^�S�y��v��   c��{l�m<�m<��xZncaKFFFGBQ��:�P&!���.�p4�R��Ǘ�F٠�a�<��y9�\�!�,q�m�[\�.�_�˼���Y{,  EFa �<��<H�e.`h8��!�1xE0�8^�q��X�8�f��@�-�15��� >�,� D����O}�����`�{����ʳ�x�E%�Z�_%� [�*A���YVxmJ.�#&Q���W1fȌ
&�|##�%�u6�ò��P�Z"L"b)9�A��]�x��x��<:y+��C���� �I˹��oN3f��� ""`X��E�EF���K���13�"���'�f�0C*�07qtl�3��b���sC��x
KfX����t�a�(�Y�_�������u;����d	��1EOs���2`�!�L�Q��� BX"r�c0e�2�,9�u.��FNN�B����gB����q��� "А���̜Xm�� ���<�r�>K2F����8< �y��`B(	�C�C�y��"2��B^�~j� �;}f��<�\���zxf���̏P	�@�]"�� �`fN}�|G)��,�Ǒ���( �1̒
p,9&�� s.q�-Z2ְD�-�C���q��O@y�_���c)i�O��D��}������O	��Z���S��9����%�b��8�$�� 	��"�3'�A,����%��Q�d��mN��B!
Np�8�b������`���}��� p�nV�[q��  0�0 �|��#d�1�� �#�x����C���1Drjr�Cָ�aĽ\��/�G�/q�Y>�;9� �3������x�.X�6(���TH@=	�-JL��$ 3�9o��8�-oe��ȜC���(�Yg�-&�f�uv �	=�P:��K
���ck��<�{9Mŋ|�?�_���Eɯ�!����`� �ǽX ��(  �� O���7p���=��G�$EI(��`���DB!emFh�X�1�(7q�/�� ԯb��v�����B��͟s�� J��1,9JN��b�bp,�!P�*���F�ل��m�<G�	fH�u���7BNG�%a8M�&׹�6�}���-�s�gLN�����g���/���C��#L���`�e�g �t�C<���@
�h�&O��y)ʘ.��c�����oJ��a-w��2eI�nqK"`�9���2���wp_^$��: ���x��C��&[|��,P3�!��X�e}���(�ſ��@��> �T<�=��
�fΒ�#�9�<��@0�Xb��0��
����e�/.�]��&gx���n��|@;7�=�y�o�s|���07�^J^�(���`�L�S��$ ��42!
 $��Q�(���<k��� ����)�ĒS0s��E��T(��x�9���w_�����`��m���ۜ_��_�=>ʈ� ,@ "����Q:9+q��p��#�q�H�a���EP C0� �ׯK �!�@����Ae��x���a��Ef���8-�L��Q&��e>ǔ&�h��e�"�����XD����a�`�0<�)۴�a��8Kǒ�c�ǡ(�3��(�8�X�ô� �Y�Y��֘3a�cvI<�s���:�#�*C�$j"��5���E10	� ��F��<J�]���p�@M�x�9�!k&r��@�c��R�� ��qd��`ȅ�(Y�2"ǒ�f�6���?�aJb
0��#RQ�( o��Q��D�A�7pC"/p�;\��^�Y� ��HX�YO��9C
Z�_�u���a̘Ĉ!-O��w�s���(�����8�<�y��Z[���D)�bR5���Rx���uZz��NNE��̱lq��!�Q���l��"�#�Kl3�1Cn��rh� �|��((<����&Gr��`r�	�t�s�O8�0d,a��� ,8 X���aIM��Aȸ�ݼ�>O�x����(=ΐhYҐP�`, �0_/�(�� (���l���l����10���)%S��1�F��� 5�(	܀�(�H �,�'#�9�A<�����P�DK�):����2��f		X�3В��s�a=��h8�b��=N�
��$z�OFK��c����a�%�!D$�D<�a�(0,1�a Ppz��9�EHlr?�Q�A$Q��������%��P�-y�0�0((Y����� +X&#���� �Xz�7��h8$�I�����<Kz4'�	5��Xp��!:�z�Da���X�8�`@ �7�f�	����]��e����ŋ܂a�K8��%<��E��'8��X�Ob�ǰ�{���d�x**�L��ۜe�!�b�)�8����Ĝ�G��<s0�%�s��XN����%��K\�6_�>�DA��9N������Ir�Y2�b�i�1�� ��RR�a2��8`D��rL�)&4(	�8�(
�@�ap(�u����^�"5��q4��+;{�Z�6(��p�DZx�I�G�##"M���6�3`���X��⨹�őa�J"�0L�;,s�U�݅�M�BI�FY�0D#v��b����8E�W8�A
r2�,��$��D�3�����rD�
�D!,!�Ц̀�e"�e"	�f0���9�Y�Y�Q�$3�"��hha��x�SԔ%��� �h�(Xr�J"�>D��%�x�g	& ��Y��lB�bJ�m�6`���NS�Ò�!CGAǒ��'��� bF��A��RN�	(���5rJT8��I[IM��&g�H�X2��)[��F�N�8pȩ&-zg�qc�6Ę�1G6OMA�&�}����dJ�e��l��p�w�����w��DNO()HTt��&�)Ĕ�F����B$���b�%5[8:Ft�آ�)�+������&�؃�ÌF��g��8�!Z-G�!��9�5J��(�b�L�D,�*c2��)`"�9���  ��p��g��������F���z"YF�F��~**z٥M�]F,aʏ�LqKh�Gx ����H͔��؄Q5��/
A�HI��C�7�$~��o`�X�8
r����#��xJ��9��9D��2��X�
���	=Ўte��f�� �10���R��t�0bJACC�9�%��vO@���ݜ����e��c��CIQP�G�Ò���y�]��G��{��{��mS���Z�Ԫ�4���	�Ĕ}���'2d�����B�)1L)�4d=�v�f-�a�<}�(��v��u��Ē��ɒ*�P�ksZz�`Sv�IKFl��f�6#n�DÝ����%�f�}���g��>+�x��9�5{X:tx"�4��M���B�$�x��0�x<��瀊��Yr�p☜!k,go��$f�X��xD9���M�\a��sȓ��$G4�`�M*#44d$#��0�& �1�BI$�`�ѡX �Ԕ8� �♩!�`�-�bH0b"����;  ��P�F�  ��O�4T4,�B B"�D�  @0������t�����Q"��HB裬��0Ċh�EH$�	@0�q�  `�h���#�a9t@�Pۈ���hh10�b)ɹ�-���u*JZ�{����g8�E� rnf�~�y�	��
c0*j0��2Z$,5S�����sG�Q
UV�  ���C �B �@J$�M	@ eAD"��'�ۊ�6���C""(r��Q $��0�SrZ#�$�3���dʌ� *�@�!�1Q��H$: A%9����DBP�>�6T�!�\�a!����@0��"(%�XB�( B0��:@AcȘ�B ���D@��!aHt$,�'C��R�8����$�Q�!��� A @k ev�`!�I��hhhH0  %I��	 (�B(5�P��0C��	�!�����x#�a�P�C�hQ,Bi�  F3(-f�Q�M�Y�+��0���B�E��)	d���ό�Hǒ���<ď�{0�H��>�	�� BGE�A�9l*`EHD&�DB ��0X���� B   ��Q�0	� �H$a`VoF"���zLHX	�C �Yw
��ƈ@��fJ��"$,�D�RS��$��:vP"��H�%"xH$ttLY�Z�
c`%!x"��!(Ja��0��[$"� GE�Ai#� �0	Ht$fF�`AĐ1��q���8 c��qE  �E��J&*f�@F$� �% �	!��`� � @P�B��,Y�p8���1XQ�(A(��` �P�Ea9� �,Qz�	�t$� �P�3�	@� � S%�b��T�(G %��C�-���aCB�xcZ�c�e�(a�!�*
�D��`�H����
�"�(�Q��V��E��`� �:��
�Hp+9�a���t�(��bJ��a**"��T ��H�3�H#��aa"��"
� C�F���$���(a �xLa���� �`�Q  <�!�@X�
`��aD�c�$,-�P �0�J�2���3e�-S��.�A2�$(EH�A\� 4`�� � 	���pX�6 <�A�3U�B @0.��2d @�  �(9@p �E  �RN 
�(  Z��P� �yY-�0S�A�.L�\��X @92L�".� +-���� �2Z��#]�����F�i1H0F~� �D9	Aoq�
  A$V� 2 A@q ( �LD�FQ@0&`�U,+�@4��P"G�@%�bJ��D*��!3��c�!ǐ ��Q��P� �/� D:A�@Y�cBN- �c�`,LP��a���D���!��1(�gƓc �` ! ���
A0C�)�r Sh: �0  � �p $
� �L<�YB b� �R�=d!P  � ��� PV�AQ
�"��X9���J %@�J^-�  �T� �� @\�	P�(p����Ri�������`���
� R"U� Z�0ZU/O��e@��@{� ��[0�D&�mRc&6���0�YE'���0�(A 1]�ɺ���K
 (@���� @ �q��	0�R [�u@	JJ��d�ĕ	p� B�  �Y����tY�$�k 
�5d	 �*P`
�YQ�1L1H� �@" Q�VBQ�`� �ಘ` �p� � e!���P	�S/�,h A8��0� _'	C�!��D���  P
PL@B!
P�L����9( @nN�q�j @�啒d%6C �y�BA^�NQVT0   �A CC`VPh E��!fLT�  @ft `�,��(+�	�U�|�t��ĊI�)P 3�9[�  p  ��128�	���
�� V,
PF ���H��Ja)1� ( ��b� @�a
���V�0�př$hT  @CrY� �"(���"�$�#��AP^�N@��֠���e\��B�6�  �+�A��( �lX FAp$\�$1P�@0��(
���+2@ ��Ģ��#�	E��a����9)ap �Dr����.���Q�2�`b�:��#�f�	��6�  @ Xi
^5T	@$�T�1�� �@P��B @̩d PE���x���,+ @°r�B$+a$0 $�A!�@�A8  E�1(``tJ�|(�t1A��� ���B`���(@$a@�b�;@�R�,x3&����w?C̸��"
c1(  F D,C�B BY4�R�h��e5	 h �� ����(lQVt�p!X  E�B0	fE� ĊQs	C �� ���{jz*�3�kR������; X^���)�jB^E'A�e�  �_�� 3倱̇��� H0 x����X^�G!8a 0�����8a^EԌ�� 8  �N�y @`���� ^E{��W�
0w$�eE?ǊP �;e4��lë��"��Y��i
�/
��P]7�σ����24u_�� �S�V/�[@����@������5�,�?�ؚ|*�������B���Wm߈� �k��?��B����c�kr��T��=�~�������������Q�)��J��}@��W�k�5�+7�S�Z/*M��[��o�����-��i����c�c����u�������o
 [remap]

importer="texture"
type="StreamTexture"
path="res://.import/escher.jpg-e27c006f6ec8234bad4101f954fb87e1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://pics/escher.jpg"
dest_files=[ "res://.import/escher.jpg-e27c006f6ec8234bad4101f954fb87e1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-9231701f98a42a3463780adf42d0c830.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://pics/icon.png"
dest_files=[ "res://.import/icon.png-9231701f98a42a3463780adf42d0c830.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [remap]

path="res://Player/Player.gdc"
        [remap]

path="res://Player/snapMovement.gdc"
  [remap]

path="res://QbertGridMap.gdc"
         [remap]

path="res://facesScenes/cubefaces.gdc"
[remap]

path="res://flatqbert6.gdc"
           �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      
   Final-proj     application/run/main_scene         res://Main.tscn    application/config/icon         res://pics/icon.png +   gui/common/drop_mouse_on_gui_input_disabled            input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_forward�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_back�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         input/flip_world_cw�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script         input/flip_world_ccw�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script         input/restart�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres               