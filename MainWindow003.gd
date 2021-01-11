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
	["wear hoes/socks/footwear", "신다"],
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

var nouns = [
	["arm", "팔"],
	["back", "등"],
	["cheeks", "볼/뺨"],
	["chest", "가슴"],
	["chin", "턱"],
	["ear", "귀"],
	["elbow", "팔꿈치"],
	["eye", "눈"],
	["face", "얼굴"],
	["finger", "손가락"],
	["fingers", "손가락"],
	["foot", "발"]
]

var colors = [
	["Orange", "주황색"],
	["Yellow", "노란색"],
	["Blue", "파란색"],
	["Red", "빨간색"],
	["Green", "초록색"],
	["Black", "검정색"],
	["Brown", "갈색"],
	["Pink", "분홍색"],
	["Purple", "보라색"],
	["White", "흰색"],
]

var adjectives = [
	["Alright/Ok", "괜찮다"],
	["Angry", "화나다"],
	["Annoyed", "짜증나다"],
	["Bad", "나쁘다"],
	["Beautiful", "아름답다"],
	["Big", "크다"],
	["Bitter", "쓰다"],
	["Bored", "심심하다"],
	["Boring/Dull", "지루하다"],
	["Brave", "씩씩하다"],
	["Cheap", "싸다"],
	["Chilly/Frosty", "싸늘하다"],
	["Chubby", "통통하다"],
	["Clean", "깨끗하다"],
	["Cloudy", "흐리다"],
	["Cold (Weather)", "춥다"],
	["Cold/Icy/Chilly (Objects)", "차갑다"],
	["Comfortable", "편하다"],
	["Convenient", "편리하다"],
	["Cool/Refreshing", "시원하다"],
	["Cute", "귀엽다"],
	["Damp/Clammy/Wet", "축축하다"],
	["Damp/Moist/Humid", "습하다"],
	["Delicious/Tasty", "맛있다"],
	["Different", "다르다"],
	["Difficult", "어렵다"],
	["Dirty", "더럽다"],
	["Dry", "건조하다"],
	["Dry/Arid", "건조하다"],
	["Early", "이르다"],
	["Easy", "쉽다"],
	["Embarrassed", "당황하다"],
	["Empty", "비어 있다"],
	["Expensive", "비싸다"],
	["Fast", "빠르다"],
	["Fat/Overweight", "뚱뚱하다"],
	["Fatty/Greasy/Oily", "기름지다"],
	["Few/Little", "적다"],
	["Fresh", "신선하다"],
	["Full/Crammed", "가득하다"],
	["Get Wet/Damp", "젖다"],
	["Glad/Happy", "기쁘다"],
	["Good Looking", "잘생기다"],
	["Good-Natured/Nice", "착하다"],
	["Good/Fine", "좋다"],
	["Happy", "행복하다"],
	["Hard/Stiff", "딱딱하다"],
	["Healthy", "건강하다"],
	["High", "높다"],
	["Hot (Touch/Objects)", "뜨겁다"],
	["Hot (Weather)", "덥다"],
	["Hungry", "배가 고프다"],
	["Inconvenient", "불편하다"],
	["Interesting", "재미있다"],
	["Jammed/Crowded", "복잡하다"],
	["Late", "늦다"],
	["Less", "적다"],
	["Lots/Many", "많다"],
	["Loud/Noisy", "시끄럽다"],
	["Mean/Nasty", "비열하다"],
	["Moist", "촉촉하다"],
	["Narrow", "좁다"],
	["New/Fresh", "새롭다"],
	["Not Interesting/Boring", "재미없다"],
	["Not Tasty", "맛없다"],
	["Old (Objects)", "오래되다"],
	["Pretty", "예쁘다"],
	["Quiet", "조용하다"],
	["Sad", "슬프다"],
	["Salty", "짜다"],
	["Scary", "무섭다"],
	["Sharp/Pointed", "날카롭다/뾰족하다"],
	["Shy", "수줍다"],
	["Sick/Painful", "아프다"],
	["Similar", "비슷하다"],
	["Skinny/Scrawny", "깡마르다"],
	["Sleepy", "졸리다"],
	["Slim/Slender", "날씬하다"],
	["Slippery", "미끄럽다"],
	["Slow", "느리다"],
	["Small", "작다"],
	["Smart/Clever", "똑똑하다"],
	["Soft", "부드럽다"],
	["Soft/Tender/Ripe", "말랑하다"],
	["Sour", "시다/시큼하다"],
	["Spicy", "맵다"],
	["Strong/Sturdy", "강하다/튼튼하다"],
	["Stupid/Foolish", "멍청하다"],
	["Surprised", "놀라다"],
	["Sweet", "달다/달콤하다"],
	["Same", "같다"],
	["Thirsty", "목이 마르다"],
	["Tired/Exhausted", "피곤하다"],
	["Ugly", "못생기다"],
	["Uncomfortable", "불편하다"],
	["Urgent", "급하다"],
	["Warm", "따뜻하다"],
	["Weak/Feeble", "약하다"],
	["Weird/Strange", "이상하다"],
	["Wide/Broad", "넓다"]
]


# Quiz Settings Variable
var numofitems
var quizitems
var conversion_type = []
var VocabularyGroups = preload("res://VocabularyGroups.tscn")

onready var menu_optionsmenu = get_node("MenuWindow/OptionButton")

# Called when the node enters the scene tree for the first time.
func _ready():
	# Init what windows are present
	get_node("QuizWindow").hide()
	get_node("MenuWindow").show()
	
	randomize()
	
	AddTestTypesOptionsMenu() # Add items to Language Group Types

	pass # Replace with function body.

func AddTestTypesOptionsMenu():
	# Add menu items
	menu_optionsmenu.add_item("Choose Type")
	menu_optionsmenu.add_item("Verb (" + String(len(verb)) + " Words)")
	menu_optionsmenu.add_item("Nouns (" + String(len(nouns)) + " Words)")
	menu_optionsmenu.add_item("Colors (" + String(len(colors)) + " Words)")
	menu_optionsmenu.add_item("Adjectives (" + String(len(adjectives)) + " Words)")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(get_node("QuizWindow").is_visible() == true):
		SyncScrolling()
	elif(get_node("MenuWindow").is_visible() == true):
		DisableDifficultyonSize()
	pass


func DisableDifficultyonSize():

	pass

# Syncronize scrolling between Quiz and Answer Tab
func SyncScrolling():
	if(get_node("QuizWindow/TabContainer").get_current_tab() == 1):
		get_node("QuizWindow/TabContainer/Answers/ScrollContainer").set_v_scroll(get_node("QuizWindow/TabContainer/Quiz/ScrollContainer").get_v_scroll())
	elif(get_node("QuizWindow/TabContainer").get_current_tab() == 2):
		get_node("QuizWindow/TabContainer/Quiz/ScrollContainer").set_v_scroll(get_node("QuizWindow/TabContainer/Answers/ScrollContainer").get_v_scroll())
	pass

func AlertWindow(alertmessage):
	get_node("MenuWindow/AlertWindow").set_text(alertmessage)
	get_node("MenuWindow/AlertWindow").show()
	pass

func _on_GenerateButton_pressed():
	var errors = 0
	
	# Quiz Window Header contents
	var QuizWindowHeaderDifficulty = get_node("QuizWindow/Header/QuizWindowDifficultyType")
	var QuizWindowHeaderLanguageType = get_node("QuizWindow/Header/QuizWindowLanguageType")
	
	# Get Language Type
	var OptionButtonSelectedID = get_node("MenuWindow/OptionButton").get_selected_id()

	if(OptionButtonSelectedID == 1):
		QuizWindowHeaderLanguageType.set_text("Type: Verbs")
		quizitems = [] + verb
	elif (OptionButtonSelectedID == 2):
		QuizWindowHeaderLanguageType.set_text("Type: Nouns")
		quizitems = [] + nouns
	elif (OptionButtonSelectedID == 3):
		QuizWindowHeaderLanguageType.set_text("Type: Colors")
		quizitems = [] + colors
	elif (OptionButtonSelectedID == 4):
		QuizWindowHeaderLanguageType.set_text("Type: Adjectives")
		quizitems = [] + adjectives
	else:
		errors = errors + 1
		
		
	# Get Conversion Type
	# Array index configurations here
	if(get_node("MenuWindow/Language Options/KortoEng").pressed):
		conversion_type = [1 ,0]
	elif(get_node("MenuWindow/Language Options/EngtoKor").pressed):
		conversion_type = [0 ,1]
	else:
		errors = errors + 1


	# Get Difficulty
	if(get_node("MenuWindow/Difficulty/VeryEasy").pressed):
		QuizWindowHeaderDifficulty.set_text("Difficulty: Very Easy")
		numofitems = 5
	elif(get_node("MenuWindow/Difficulty/Easy").pressed):
		QuizWindowHeaderDifficulty.set_text("Difficulty: Easy")
		numofitems = 10
	elif(get_node("MenuWindow/Difficulty/Medium").pressed):
		QuizWindowHeaderDifficulty.set_text("Difficulty: Medium")
		numofitems = 25
	elif(get_node("MenuWindow/Difficulty/Hard").pressed):
		QuizWindowHeaderDifficulty.set_text("Difficulty: Hard")
		numofitems = 50
	elif(get_node("MenuWindow/Difficulty/VeryHard").pressed):
		QuizWindowHeaderDifficulty.set_text("Difficulty: Very Easy")
		numofitems = 100
	else:
		errors = errors + 1
		
		
	if(errors == 0):
		FillUpQuizWindow()
		get_node("MenuWindow").hide()
		get_node("QuizWindow").show()
	else:
		AlertWindow("Please Complete Form before proceeding...")
	pass # Replace with function body.


func FillUpQuizWindow():

	if(conversion_type[0] == 0):
		get_node("QuizWindow/HeaderLanguageFlags/EngKor").show()
		get_node("QuizWindow/HeaderLanguageFlags/KorEng").hide()
	elif(conversion_type[0] == 1):
		get_node("QuizWindow/HeaderLanguageFlags/EngKor").hide()
		get_node("QuizWindow/HeaderLanguageFlags/KorEng").show()

	var finalquizitems
	var leftitem
	var rightitem
	
	for x in ["reviewer", "quizes", "answers"]:
		if(x == "reviewer"):
			finalquizitems = [] + quizitems.slice(0, int(numofitems)-1)
			finalquizitems.shuffle()
		else:
			finalquizitems = [] + quizitems.slice(0, int(numofitems)-1)

		for n in range(numofitems):
			if(x == "quizes"):
				leftitem = finalquizitems[n][conversion_type[0]]
				rightitem = "???"
			else:
				leftitem = finalquizitems[n][conversion_type[0]]
				rightitem = finalquizitems[n][conversion_type[1]]

			var VocGroups = VocabularyGroups.instance()
			VocGroups.SetLabels(leftitem, rightitem)
			match x:
				"reviewer":
					get_node("QuizWindow/TabContainer/Reviewer/ScrollContainer/VBoxContainer").add_child(VocGroups)
				"quizes":
					get_node("QuizWindow/TabContainer/Quiz/ScrollContainer/VBoxContainer").add_child(VocGroups)
				"answers":
					get_node("QuizWindow/TabContainer/Answers/ScrollContainer/VBoxContainer").add_child(VocGroups)



# Reset everything
func _on_NewQuizButton_pressed():
	get_node("MenuWindow").show()
	get_node("QuizWindow").hide()

	numofitems = null
	quizitems = null
	conversion_type = []

	get_node("MenuWindow/OptionButton")._select_int(0)

	# Reset Language Conversion type
	get_node("MenuWindow/Language Options/EngtoKor").set_pressed(false)
	get_node("MenuWindow/Language Options/KortoEng").set_pressed(false)

	# Reset Difficulty type
	get_node("MenuWindow/Difficulty/Easy").set_pressed(false)
	get_node("MenuWindow/Difficulty/Medium").set_pressed(false)
	get_node("MenuWindow/Difficulty/Hard").set_pressed(false)
	get_node("MenuWindow/Difficulty/VeryHard").set_pressed(false)
	get_node("MenuWindow/Difficulty/VeryEasy").set_pressed(false)


	DeleteChildren(get_node("QuizWindow/TabContainer/Reviewer/ScrollContainer/VBoxContainer"))
	DeleteChildren(get_node("QuizWindow/TabContainer/Quiz/ScrollContainer/VBoxContainer"))
	DeleteChildren(get_node("QuizWindow/TabContainer/Answers/ScrollContainer/VBoxContainer"))
	
	pass # Replace with function body.

func DeleteChildren(node):
	for n in node.get_children():
		node.remove_child(n)
		n.queue_free()
