class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  String _img;
  int _priority;

  Note(
    this._title,
    this._description,
    this._date,
    this._priority,
    this._img
  );

  Note.withId(this._id, this._title, this._date,this._img, this._priority,
      [this._description]);

  int get id => _id;

  String get title => _title;

  String get img => _img;

  String get description => _description;

  int get priority => _priority;

  String get date => _date;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set img(String newImg) {
 
      this._img = newImg;
    
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    map['img'] = _img;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
    this._img = map['img'];
  }
}
