extends Control

var verb = [
	["go", "가다"],
	["teach", "가르치다"],
	["have", "가지다"],
	["have", "갖다"],
	["lie", "거짓말하다"],
	["worry", "걱정하다"],
	["walk", "걷다"],
	["call/dial", "걸다"],
	["marry", "결혼하다"],
	["confess", "고백하다"],
	["study", "공부하다"],
	["roast, grill, bake", "굽다"],
	["wait", "기다리다"],
	["remember", "기억하다"],
	["dream", "꿈꾸다"],
	["boil", "끓이다"],
	["finish", "끝나다"],
	["exit", "나가다"],
	["pay", "내다"],
	["close", "닫다"],
	["answer", "대답하다"],
	["help", "도와주다"],
	["arrive", "도착하다"],
	["hear", "듣다"],
	["enter", "들어오다"],
	["drink", "마시다"],
	["meet", "만나다"],
	["make", "만들다"],
	["talk, speak", "말하다"],
	["eat", "먹다"],
	["not know", "모르다"],
	["ask", "묻다"],
	["ask", "물어보다"],
	["learn", "배우다"],
	["undress/take off clothes", "벗다"],
	["send", "보내다"],
	["see", "보다"],
	["fry", "볶다"],
	["borrow, lend", "빌리다"],
	["buy", "사다"],
	["fall in love", "사랑에 빠지다"],
	["love", "사랑하다"],
	["use", "사용하다"],
	["live", "살다"],
	["think", "생각하다"],
	["hurry/rush", "서두르다"],
	["mix/blend", "섞다"],
	["introduce", "소개하다"],
	["rest", "쉬다"],
	["start", "시작하다"],
	["wear hoes/socks/footwear)", "신다"],
	["hate, dislike", "싫어하다"],
	["fight", "싸우다"],
	["chop/slice", "썰다"],
	["write", "쓰다"],
	["wear hat/eyewear", "쓰다"],
	["wash", "씻다"],
	["sit", "앉다"],
	["know", "알다"],
	["promise", "약속하다"],
	["not have", "없다"],
	["practice", "연습하다"],
	["open", "열다"],
	["come", "오다"],
	["cook", "요리하다"],
	["exercise", "운동하다"],
	["drive", "운전하다"],
	["cry", "울다"],
	["laugh", "웃다"],
	["win, defeat", "이기다"],
	["talk, chat", "이야기하다"],
	["get up", "일어나다"],
	["work", "일하다"],
	["read", "읽다"],
	["wear", "입다"],
	["have", "있다"],
	["sleep", "자다"],
	["measure, weigh", "재다"],
	["telephone", "전화하다"],
	["like", "좋아하다"],
	["be sorry", "죄송하다"],
	["give", "주다"],
	["order", "주문하다"],
	["die", "죽다"],
	["prepare", "준비하다"],
	["lose, be defeated", "지다"],
	["steam", "찌다"],
	["take (picture)", "찍다"],
	["find/look for", "찾다"],
	["clean", "청소하다"],
	["congratulate", "축하하다"],
	["depart", "출발하다"],
	["dance", "춤추다"],
	["ride", "타다"],
	["be born", "태어나다"],
	["deep fry", "튀기다"],
	["sell", "팔다"],
	["need", "필요하다"],
	["do", "하다"],
	["stir", "휘젓다"],
]

var quiz_array_items = []
var quiz_array = []
var quiz_type = ""
var items = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

	get_node("MenuWindow/Menu Content/ItemLimit").set_text("/" + str(verb.size()))
	OS.set_window_size($MenuWindow.get_size())
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (get_node("MenuWindow/Menu Content/Options/kortoeng").pressed):
		quiz_type = "Korean To English"
	elif(get_node("MenuWindow/Menu Content/Options/engtokor").pressed):
		quiz_type = "English To Korean"
		
	if (len(quiz_type))>0 and int(get_node("MenuWindow/Menu Content/NumberOfItems").get_text()) > 0:
		$MenuWindow/GenerateButton.set_disabled(false)
	else:
		$MenuWindow/GenerateButton.set_disabled(true)

	pass



func RepositionWindow():

	pass



func _on_GenerateButton_pressed():
	var verb_shuffle = [] + verb
	verb_shuffle.shuffle()
	items = get_node("MenuWindow/Menu Content/NumberOfItems").get_text()
	quiz_array = verb_shuffle.slice(0, int(items)-1)
	
	OS.set_window_size($QuizWindow.get_size())
	$MenuWindow.hide()
	# RepositionWindow()
	# $WindowDialog.show()
	$QuizWindow.show()


	pass # Replace with function body.
	
	
func _on_QuizWindow_VisibilityChanged():
	
	$QuizWindow/QuizWindowType.set_text(quiz_type) # Quiz Window Header
	
	for quiz in range(len(quiz_array)):
		#Putting child on scene
		var loadScene = preload("res://QuizComponent.tscn").instance() #Pre Loading Template Item Child
		loadScene.get_node("QuizLabelNumber").set_text(String(quiz+1) + ".") # Item Number/Enumaration
		loadScene.get_node("QuizLabel").set_text(quiz_array[quiz][0]) # Main Item
		quiz_array_items.append(loadScene)
		print(loadScene)
		$QuizWindow/ScrollContainer/VBoxContainer.add_child(loadScene)
	
	print(quiz_array_items)

	pass # Replace with function body.


func _on_QuizWindowButton_ButtonUp():
	print(quiz_array_items["2560"].get_node("Blank").get_text())
	pass # Replace with function body.
