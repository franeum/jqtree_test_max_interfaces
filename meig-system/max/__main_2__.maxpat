{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1475.0, 79.0, 1851.0, 967.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"data" : 					{

					}
,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 30.0, 643.0, 132.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict presets @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.745092134354877, 555.0, 420.0, 359.0 ],
					"rendermode" : 0,
					"url" : "http://127.0.0.1:3000/api/v1/preset/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.745092134354877, 525.0, 231.0, 22.0 ],
					"text" : "url http://127.0.0.1:3000/api/v1/preset/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.745092134354877, 44.0, 67.0, 22.0 ],
					"text" : "r fromnode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.745092134354877, 134.0, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.print FROMNODE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.245092134354877, 74.0, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.dict2llll"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1459.781290631173306, 428.337385773658752, 29.5, 22.0 ],
					"text" : "!- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1459.781290631173306, 396.409673750400543, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1459.781290631173306, 460.867507457733154, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1097.800478061040394, 280.0, 238.0, 22.0 ],
					"text" : "url http://127.0.0.1:3000/api/v1/params/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.800478061040508, 280.0, 233.0, 22.0 ],
					"text" : "url http://127.0.0.1:3000/api/v1/device/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1097.800478061040394, 325.0, 315.0, 585.0 ],
					"rendermode" : 0,
					"url" : "http://127.0.0.1:3000/api/v1/params/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.800478061040508, 325.0, 420.0, 585.0 ],
					"rendermode" : 0,
					"url" : "http://127.0.0.1:3000/api/v1/device/tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 135.0, 71.0, 22.0 ],
					"text" : "post_cross"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 135.0, 55.0, 22.0 ],
					"text" : "r toNode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 114.0, 525.0, 69.0, 22.0 ],
					"text" : "s fromnode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 135.0, 98.0, 22.0 ],
					"text" : "script npm install"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 525.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 180.0, 102.0, 22.0 ],
					"text" : "get_params 1003"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{

					}
,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 30.0, 614.0, 153.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict parameters @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 180.0, 108.0, 22.0 ],
					"text" : "post_params 1007"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"name" : "devices",
						"id" : "6151c5b6a77e5c38aff37b56",
						"type" : "main",
						"is_open" : 1,
						"children" : [ 							{
								"name" : "group",
								"type" : "group",
								"id" : "6151c5b623916f04fdacf486",
								"is_open" : 1,
								"children" : [ 									{
										"name" : "reverb",
										"id" : "6151c5c043a9b6b30bdcc46e",
										"type" : "device",
										"is_open" : 1,
										"children" : [ 											{
												"name" : "i/o",
												"id" : "6151c5c012cd13dcf4108d73",
												"type" : "io",
												"is_open" : 0,
												"children" : [ 													{
														"name" : "input",
														"id" : "6151c5c0d7f4131aadd1941d",
														"type" : "input",
														"children" : [ 															{
																"name" : "0",
																"id" : "6151c5c06350a4d6e06e4ab5",
																"type" : "input_value",
																"path" : ""
															}
 ]
													}
, 													{
														"name" : "output",
														"id" : "6151c5c0d7b8ca5cc7246d9a",
														"type" : "output",
														"children" : [ 															{
																"name" : "0",
																"id" : "6151c5c00b036ebc1b8e457c",
																"type" : "output_value",
																"path" : ""
															}
 ]
													}
 ]
											}
, 											{
												"name" : "Parameters",
												"id" : "6151c5c0718cb71fd4557527",
												"type" : "parameter",
												"is_open" : 1,
												"children" : [ 													{
														"name" : "par1",
														"id" : "6151c5d023ec1013865b2ae1",
														"type" : "parameter_name",
														"path" : "group/reverb/par1"
													}
, 													{
														"name" : "par2",
														"id" : "6151c5c0968cfa1fbe3d629b",
														"type" : "parameter_name",
														"path" : ""
													}
 ]
											}
 ]
									}
 ]
							}
 ]
					}
,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 30.0, 584.0, 133.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict devices @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 180.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 180.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-47",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 60.0, 284.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 225.0, 542.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 1,
						"defer" : 0,
						"watch" : 0
					}
,
					"text" : "node.script /Users/neum/Documents/jqtree_test_max_interfaces/meig-system/bin/www @autostart 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1843.745069365380459, 369.46343994140625, 150.0, 33.0 ],
					"text" : "stafflines nel dict è sbagliato"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1531.411804418442898, 398.054089229019155, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1732.745143751977139, 398.054089229019155, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1622.745063404915982, 469.128371994407644, 430.66667652130127, 326.666673421859741 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "dictionary" ],
					"patching_rect" : [ 1622.745063404915982, 393.054088632972707, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.llll2dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1622.745063404915982, 423.387423317344656, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1465.745063404915982, 295.333350419998169, 85.0, 22.0 ],
					"text" : "r rollout_dump"
				}

			}
, 			{
				"box" : 				{
					"code" : "$slotnames = for $x in $x1.'slotinfo' collect $x:(1 2);\r\nprint($slotnames)\r\n\r\n\r\n$voices = right($x1, 0 - length($x1.'voicenames'));\r\n## print($voices)\r\n\r\n$rollwithoutvoices = left($x1, 0 - length($x1.'voicenames'));\r\n\r\n\r\n$voices_parser = \r\n\r\nfor\r\n\t$x in $voices,\r\n\t$y in $x1.'voicenames'\r\n\t\twith @maxdepth 1\r\n\r\ncollect\r\n\r\n\t\twrap(\r\n\t\t\t$y\r\n\r\n\t\t\tfor\r\n\t\t\t\t$z $zaddr in $x with @maxdepth 2\r\n\t\t\tcollect\r\n\t\t\twrap(\r\n\t\t\t\t$zaddr:2\r\n\r\n\t\t\twrap(\r\n\t\t\t\t'onset'\r\n\t\t\t\t$z:(1 1))\r\n\t\t\t\r\n\t\t\twrap(\r\n\t\t\t\t'pitch (position)'\r\n\t\t\t\t$z:(1 2 1))\r\n\r\n\t\t\twrap(\r\n\t\t\t\t'duration'\r\n\t\t\t\t$z:(1 2 2))\r\n\r\n\t\t\twrap(\r\n\t\t\t\t'velocity (UNUSED)'\r\n\t\t\t\t$z:(1 2 2))\r\n\t\t\t\r\n\t\t\twrap(\r\n\t\t\t\t'slots'\r\n\t\t\t\t$z:(1 2 4))\t\t\t\r\n\t\r\n\t\r\n\t\t\r\n\t\t)\r\n\t\t)\r\n\t\t;\r\n\r\n## print($voices_parser)\r\n\r\nprint(for $x in $voices_parser collect subs($x, -1 -1, null))\r\n\r\ndirectout(1,\r\n\t\t\twrap('header' $rollwithoutvoices)\r\n\t\t\twrap('voices' for $x in $voices_parser collect subs($x, -1 -1, null)))\r\n",
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1465.745063404915982, 330.333350419998169, 176.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80100
					}
,
					"text" : "bach.eval @directouts 1 @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2248.033593893051147, 692.054089229019155, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"firsteleminllllisllllname" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "bach.tree",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 5,
					"out" : "nnnn",
					"outlettype" : [ "", "", "", "", "bang" ],
					"patching_rect" : [ 2121.159862637519836, 831.615541969879132, 493.258450388908386, 262.268767839241036 ],
					"tree_openstate_data_0000000000" : [ "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]", "[", 1, 0, 0, "]" ],
					"tree_openstate_data_count" : [ 1 ],
					"versionnumber" : 80100,
					"whole_tree_data_0000000000" : [ "[", "`1", "roll", "]", "[", "`2", "[ slotinfo [ 1 [ name envelope ] [ type function ] [ key f ] [ range 0.0000 1.0000 ] [ slope 0.0000 ] [ representation ] [ grid ] [ ysnap ] [ domain 0.0000 1.0000 ] [ domainslope 0.0000 ] [ temporalmode relative ] [ extend 0 ] [ width duration ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 2 [ name start ] [ type floatlist ] [ key s ] [ range 0.0000 1.0000 ] [ slope 0.0000 ] [ representation ] [ color 0.0213 0.0213 0.0231 1.0000 ] [ default 0.0000 ] [ temporalmode relative ] [ extend 0 ] [ width 150.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 3 [ name destination ] [ type floatlist ] [ key d ] [ range 0.0000 1.0000 ] [ slope 0.0000 ] [ representation ] [ color 0.6241 0.6370 0.3704 1.0000 ] [ default 0.0000 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 4 [ name start ] [ type intlist ] [ key S ] [ range 0.0000 127.0000 ] [ slope 0.0000 ] [ representation ] [ color 0.0890 0.0849 0.0758 1.0000 ] [ default 0.0000 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 5 [ name destination ] [ type intlist ] [ key D ] [ range 0.0000 127.0000 ] [ slope 0.0000 ] [ representation ] [ color 0.5460 0.5561 0.3475 1.0000 ] [ default 1.0000 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 6 [ name text ] [ type text ] [ key t ] [ temporalmode none ] [ extend 0 ] [ width 150.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 7 [ name filelist ] [ type filelist ] [ key f ] [ color 0.0000 0.0000 0.0000 1.0000 ] [ temporalmode none ] [ extend 0 ] [ width 150.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 8 [ name event ] [ type llll ] [ key y ] [ temporalmode none ] [ extend 0 ] [ width 53.2408 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 9 [ name id ] [ type text ] [ key I ] [ temporalmode none ] [ extend 0 ] [ width 150.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 10 [ name id ] [ type text ] [ key i ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 11 [ name Label ] [ type text ] [ key l ] [ color 0.0000 0.0000 0.0000 1.0000 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 12 [ name Comments ] [ type text ] [ key c ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 13 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 14 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 15 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 16 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 17 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 18 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 19 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 20 [ name dynamics ] [ type none ] [ key d ] [ temporalmode none ] [ extend 0 ] [ width 110.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 21 [ name lyrics ] [ type none ] [ key l ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 0 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 22 [ name articulations ] [ type none ] [ key a ] [ temporalmode none ] [ extend 0 ] [ width 110.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 23 [ name notehead ] [ type notehead ] [ key h ] [ temporalmode none ] [ extend 0 ] [ width 110.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 24 [ name annotation ] [ type none ] [ key t ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 25 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 26 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 27 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 28 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 29 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] [ 30 [ name slot ] [ type none ] [ key 0 ] [ temporalmode none ] [ extend 0 ] [ width 100.0000 ] [ height auto ] [ copywhensplit 1 ] [ access readandwrite ] [ follownotehead 0 ] ] ]", "]", "[", "`3", "[ commands [ 1 [ note note ] [ chord chord ] [ rest rest ] [ key 0 ] ] [ 2 [ note note ] [ chord chord ] [ rest rest ] [ key 0 ] ] [ 3 [ note note ] [ chord chord ] [ rest rest ] [ key 0 ] ] [ 4 [ note note ] [ chord chord ] [ rest rest ] [ key 0 ] ] [ 5 [ note note ] [ chord chord ] [ rest rest ] [ key 0 ] ] ]", "]", "[", "`4", "[ clefs None None None None None ]", "]", "[", "`5", "[ keys CM CM CM CM CM ]", "]", "[", "`6", "[ voicenames presets events x y z ]", "]", "[", "`7", "[ groups ]", "]", "[", "`8", "[ markers ]", "]", "[", "`9", "[ stafflines [ -1 1 3 5 7 ] [ -1 1 3 5 7 ] [ 1 6 ] [ 1 6 ] [ 1 6 ] ]", "]", "[", "`10", "[ midichannels 1 2 3 4 5 ]", "]", "[", "`11", "[ articulationinfo ]", "]", "[", "`12", "[ noteheadinfo ]", "]", "[", "`13", "[ numparts 2 1 1 1 ]", "]", "[", "`14", "[ loop 1774.9849 3022.1760 ]", "]", "[", "`15", "[ [ 200.0000 [ 8000.0000 0.0000 1 [ slots [ 10 61486719309e434baaad91de ] [ 11 preset ] [ 23 blacksquare ] ] [ name 61486719309e434baaad91de ] 0 ] 0 ] 0 ]", "]", "[", "`16", "[ [ 100.0000 [ 6500.0000 0.0000 1 [ slots [ 8 x z ] [ 9 6148671b7d0f028500738d80 ] [ 10 6148671b0f8b27641631280f ] [ 11 event ] [ 23 blacktriangle ] ] [ name 6148671b0f8b27641631280f ] 0 ] [ name 6148671b7d0f028500738d80 ] 0 ] [ 1600.0000 [ 7200.0000 0.0000 1 [ slots [ 8 x y z ] [ 9 6148671c7146b90dd02cfa72 ] [ 10 6148671c112a34a4b6fd1570 ] [ 11 event ] [ 23 blacktriangle ] ] [ name 6148671c112a34a4b6fd1570 ] 0 ] [ name 6148671c7146b90dd02cfa72 ] 0 ] [ 2700.0000 [ 7100.0000 0.0000 1 [ slots [ 8 y ] [ 9 614867ab3a1517c86c87fbd7 ] [ 10 614867abfea70888e850106b ] [ 11 event ] [ 23 blacktriangle ] ] [ name 614867abfea70888e850106b ] 0 ] [ name 614867ab3a1517c86c87fbd7 ] 0 ] [ 3600.0000 [ 7200.0000 0.0000 1 [ slots [ 8 x y z ] [ 9 6148697a1bd9c694ffe781c3 ] [ 10 6148697a31a8d11f4910ba75 ] [ 11 event ] [ 23 blacktriangle ] ] [ name 6148697a31a8d11f4910ba75 ] 0 ] [ name 6148697a1bd9c694ffe781c3 ] 0 ] 0 ]", "]", "[", "`17", "[ [ 900.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671b7d0f028500738d80 ] [ 10 614867af3e40a129a9bba870 ] [ 11 x ] [ 23 cross ] ] [ name 614867af3e40a129a9bba870 ] 0 ] [ name 6148671b7d0f028500738d80 ] 0 ] [ 2200.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671b7d0f028500738d80 ] [ 10 61486727281e5edbf3f99f02 ] [ 11 x ] [ 23 cross ] ] [ name 61486727281e5edbf3f99f02 ] 0 ] [ name 6148671b7d0f028500738d80 ] 0 ] [ 3500.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671c7146b90dd02cfa72 ] [ 10 6148672c2badf14f91d21a7b ] [ 11 x ] [ 23 cross ] ] [ name 6148672c2badf14f91d21a7b ] 0 ] [ name 6148671c7146b90dd02cfa72 ] 0 ] 0 ]", "]", "[", "`18", "[ [ 2200.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671c7146b90dd02cfa72 ] [ 10 6148672aa3fa3dde23df79e4 ] [ 11 y ] [ 23 cross ] ] [ name 6148672aa3fa3dde23df79e4 ] 0 ] [ name 6148671c7146b90dd02cfa72 ] 0 ] [ 3700.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 614867ab3a1517c86c87fbd7 ] [ 10 614867c06265ea71d4248477 ] [ 11 y ] [ 23 cross ] ] [ name 614867c06265ea71d4248477 ] 0 ] [ name 614867ab3a1517c86c87fbd7 ] 0 ] 0 ]", "]", "[", "`19", "[ [ 1000.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671b7d0f028500738d80 ] [ 10 614867268f2e9fabdcf6728b ] [ 11 z ] [ 23 cross ] ] [ name 614867268f2e9fabdcf6728b ] 0 ] [ name 6148671b7d0f028500738d80 ] 0 ] [ 2800.0000 [ 6400.0000 1000.0000 1 [ slots [ 9 6148671c7146b90dd02cfa72 ] [ 10 6148672b3d458cce5e8c3739 ] [ 11 z ] [ 23 cross ] ] [ name 6148672b3d458cce5e8c3739 ] 0 ] [ name 6148671c7146b90dd02cfa72 ] 0 ] 0 ]", "]" ],
					"whole_tree_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2175.033593893051147, 786.568888506713847, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.dict2llll"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2387.033596992492676, 400.83672324887084, 43.0, 22.0 ],
					"text" : "s rollin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2387.033596992492676, 370.720755855949392, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2175.0, 398.054089229019155, 85.0, 22.0 ],
					"text" : "r rollout_dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2175.033593893051147, 611.054089229019155, 37.0, 22.0 ],
					"text" : "zl rev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2261.0, 501.346229355247488, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.textout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2121.159862637519836, 662.420536956611613, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.047058823529412, 1.0, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 2159.36236035823822, 707.515773615661601, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2170.0, 653.631244025054912, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2175.0, 533.054089229019155, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2175.0, 501.346229355247488, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.textout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2175.0, 576.821541867080668, 102.679464759658913, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2175.0, 437.830418150337209, 133.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.iter @maxdepth 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2003.885210401209861, 299.944462656974792, 232.0, 22.0 ],
					"text" : "domain 0. 10919.053226"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1647.52408284583953, 227.552135825157166, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80100
					}
,
					"text" : "bach.textout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1951.013809304116421, 227.740968346595764, 97.0, 22.0 ],
					"text" : "s rollout_change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1764.85741967597869, 227.552135825157166, 96.0, 22.0 ],
					"text" : "s rollout_playout"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 339.5, 213.0, 69.5, 213.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 219.5, 214.5, 69.5, 214.5 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 144.5, 213.0, 69.5, 213.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 69.5, 258.5, 123.5, 258.5 ],
					"order" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 69.5, 258.5, 39.5, 258.5 ],
					"order" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 592.5, 274.0, 69.5, 274.0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 1469.281290631173306, 492.867507457733154, 1446.957555741408669, 492.867507457733154, 1446.957555741408669, 314.0, 1107.300478061040394, 314.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "www",
				"bootpath" : "~/Documents/jqtree_test_max_interfaces/meig-system/bin",
				"patcherrelativepath" : "../bin",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bach.textout.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.dict2llll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.tree.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eval.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.llll2dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "stocazzo",
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}