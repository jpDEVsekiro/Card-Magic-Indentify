class CardMagic {
  CardMagic({
    required this.object,
    required this.id,
    required this.oracleId,
    required this.multiverseIds,
    required this.mtgoId,
    required this.arenaId,
    required this.tcgplayerId,
    required this.cardmarketId,
    required this.name,
    required this.lang,
    required this.releasedAt,
    required this.uri,
    required this.scryfallUri,
    required this.layout,
    required this.highresImage,
    required this.imageStatus,
    required this.imageUris,
    required this.manaCost,
    required this.typeLine,
    required this.oracleText,
    required this.colors,
    required this.colorIdentity,
    required this.keywords,
    required this.legalities,
    required this.games,
    required this.reserved,
    required this.foil,
    required this.nonfoil,
    required this.oversized,
    required this.promo,
    required this.reprint,
    required this.variation,
    required this.setId,
    required this.set,
    required this.setName,
    required this.setType,
    required this.setUri,
    required this.setSearchUri,
    required this.scryfallSetUri,
    required this.rulingsUri,
    required this.printsSearchUri,
    required this.collectorNumber,
    required this.digital,
    required this.rarity,
    required this.cardBackId,
    required this.artist,
    required this.artistIds,
    required this.illustrationId,
    required this.borderColor,
    required this.frame,
    required this.fullArt,
    required this.textless,
    required this.booster,
    required this.storySpotlight,
    required this.prices,
    required this.relatedUris,
    required this.purchaseUris,
  });
  late final String object;
  late final String id;
  late final String oracleId;
  late final List<int> multiverseIds;
  late final int mtgoId;
  late final int arenaId;
  late final int tcgplayerId;
  late final int cardmarketId;
  late final String name;
  late final String lang;
  late final String releasedAt;
  late final String uri;
  late final String scryfallUri;
  late final String layout;
  late final bool highresImage;
  late final String imageStatus;
  late final ImageUris imageUris;
  late final String manaCost;
  late final String typeLine;
  late final String oracleText;
  late final List<dynamic> colors;
  late final List<String> colorIdentity;
  late final List<dynamic> keywords;
  late final Legalities legalities;
  late final List<String> games;
  late final bool reserved;
  late final bool foil;
  late final bool nonfoil;
  late final bool oversized;
  late final bool promo;
  late final bool reprint;
  late final bool variation;
  late final String setId;
  late final String set;
  late final String setName;
  late final String setType;
  late final String setUri;
  late final String setSearchUri;
  late final String scryfallSetUri;
  late final String rulingsUri;
  late final String printsSearchUri;
  late final String collectorNumber;
  late final bool digital;
  late final String rarity;
  late final String cardBackId;
  late final String artist;
  late final List<String> artistIds;
  late final String illustrationId;
  late final String borderColor;
  late final String frame;
  late final bool fullArt;
  late final bool textless;
  late final bool booster;
  late final bool storySpotlight;
  late final Prices prices;
  late final RelatedUris relatedUris;
  late final PurchaseUris purchaseUris;

  CardMagic.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    oracleId = json['oracle_id'];
    multiverseIds = List.castFrom<dynamic, int>(json['multiverse_ids']);
    mtgoId = json['mtgo_id'];
    arenaId = json['arena_id'];
    tcgplayerId = json['tcgplayer_id'];
    cardmarketId = json['cardmarket_id'];
    name = json['name'];
    lang = json['lang'];
    releasedAt = json['released_at'];
    uri = json['uri'];
    scryfallUri = json['scryfall_uri'];
    layout = json['layout'];
    highresImage = json['highres_image'];
    imageStatus = json['image_status'];
    imageUris = ImageUris.fromJson(json['image_uris']);
    manaCost = json['mana_cost'];
    typeLine = json['type_line'];
    oracleText = json['oracle_text'];
    colors = List.castFrom<dynamic, dynamic>(json['colors']);
    colorIdentity = List.castFrom<dynamic, String>(json['color_identity']);
    keywords = List.castFrom<dynamic, dynamic>(json['keywords']);
    legalities = Legalities.fromJson(json['legalities']);
    games = List.castFrom<dynamic, String>(json['games']);
    reserved = json['reserved'];
    foil = json['foil'];
    nonfoil = json['nonfoil'];
    oversized = json['oversized'];
    promo = json['promo'];
    reprint = json['reprint'];
    variation = json['variation'];
    setId = json['set_id'];
    set = json['set'];
    setName = json['set_name'];
    setType = json['set_type'];
    setUri = json['set_uri'];
    setSearchUri = json['set_search_uri'];
    scryfallSetUri = json['scryfall_set_uri'];
    rulingsUri = json['rulings_uri'];
    printsSearchUri = json['prints_search_uri'];
    collectorNumber = json['collector_number'];
    digital = json['digital'];
    rarity = json['rarity'];
    cardBackId = json['card_back_id'];
    artist = json['artist'];
    artistIds = List.castFrom<dynamic, String>(json['artist_ids']);
    illustrationId = json['illustration_id'];
    borderColor = json['border_color'];
    frame = json['frame'];
    fullArt = json['full_art'];
    textless = json['textless'];
    booster = json['booster'];
    storySpotlight = json['story_spotlight'];
    prices = Prices.fromJson(json['prices']);
    relatedUris = RelatedUris.fromJson(json['related_uris']);
    purchaseUris = PurchaseUris.fromJson(json['purchase_uris']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['object'] = object;
    _data['id'] = id;
    _data['oracle_id'] = oracleId;
    _data['multiverse_ids'] = multiverseIds;
    _data['mtgo_id'] = mtgoId;
    _data['arena_id'] = arenaId;
    _data['tcgplayer_id'] = tcgplayerId;
    _data['cardmarket_id'] = cardmarketId;
    _data['name'] = name;
    _data['lang'] = lang;
    _data['released_at'] = releasedAt;
    _data['uri'] = uri;
    _data['scryfall_uri'] = scryfallUri;
    _data['layout'] = layout;
    _data['highres_image'] = highresImage;
    _data['image_status'] = imageStatus;
    _data['image_uris'] = imageUris.toJson();
    _data['mana_cost'] = manaCost;
    _data['type_line'] = typeLine;
    _data['oracle_text'] = oracleText;
    _data['colors'] = colors;
    _data['color_identity'] = colorIdentity;
    _data['keywords'] = keywords;
    _data['legalities'] = legalities.toJson();
    _data['games'] = games;
    _data['reserved'] = reserved;
    _data['foil'] = foil;
    _data['nonfoil'] = nonfoil;
    _data['oversized'] = oversized;
    _data['promo'] = promo;
    _data['reprint'] = reprint;
    _data['variation'] = variation;
    _data['set_id'] = setId;
    _data['set'] = set;
    _data['set_name'] = setName;
    _data['set_type'] = setType;
    _data['set_uri'] = setUri;
    _data['set_search_uri'] = setSearchUri;
    _data['scryfall_set_uri'] = scryfallSetUri;
    _data['rulings_uri'] = rulingsUri;
    _data['prints_search_uri'] = printsSearchUri;
    _data['collector_number'] = collectorNumber;
    _data['digital'] = digital;
    _data['rarity'] = rarity;
    _data['card_back_id'] = cardBackId;
    _data['artist'] = artist;
    _data['artist_ids'] = artistIds;
    _data['illustration_id'] = illustrationId;
    _data['border_color'] = borderColor;
    _data['frame'] = frame;
    _data['full_art'] = fullArt;
    _data['textless'] = textless;
    _data['booster'] = booster;
    _data['story_spotlight'] = storySpotlight;
    _data['prices'] = prices.toJson();
    _data['related_uris'] = relatedUris.toJson();
    _data['purchase_uris'] = purchaseUris.toJson();
    return _data;
  }
}

class ImageUris {
  ImageUris({
    required this.small,
    required this.normal,
    required this.large,
    required this.png,
    required this.artCrop,
    required this.borderCrop,
  });
  late final String small;
  late final String normal;
  late final String large;
  late final String png;
  late final String artCrop;
  late final String borderCrop;

  ImageUris.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    normal = json['normal'];
    large = json['large'];
    png = json['png'];
    artCrop = json['art_crop'];
    borderCrop = json['border_crop'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['small'] = small;
    _data['normal'] = normal;
    _data['large'] = large;
    _data['png'] = png;
    _data['art_crop'] = artCrop;
    _data['border_crop'] = borderCrop;
    return _data;
  }
}

class Legalities {
  Legalities({
    required this.standard,
    required this.future,
    required this.historic,
    required this.gladiator,
    required this.pioneer,
    required this.modern,
    required this.legacy,
    required this.pauper,
    required this.vintage,
    required this.penny,
    required this.commander,
    required this.brawl,
    required this.historicbrawl,
    required this.paupercommander,
    required this.duel,
    required this.oldschool,
    required this.premodern,
  });
  late final String standard;
  late final String future;
  late final String historic;
  late final String gladiator;
  late final String pioneer;
  late final String modern;
  late final String legacy;
  late final String pauper;
  late final String vintage;
  late final String penny;
  late final String commander;
  late final String brawl;
  late final String historicbrawl;
  late final String paupercommander;
  late final String duel;
  late final String oldschool;
  late final String premodern;

  Legalities.fromJson(Map<String, dynamic> json) {
    standard = json['standard'];
    future = json['future'];
    historic = json['historic'];
    gladiator = json['gladiator'];
    pioneer = json['pioneer'];
    modern = json['modern'];
    legacy = json['legacy'];
    pauper = json['pauper'];
    vintage = json['vintage'];
    penny = json['penny'];
    commander = json['commander'];
    brawl = json['brawl'];
    historicbrawl = json['historicbrawl'];
    paupercommander = json['paupercommander'];
    duel = json['duel'];
    oldschool = json['oldschool'];
    premodern = json['premodern'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['standard'] = standard;
    _data['future'] = future;
    _data['historic'] = historic;
    _data['gladiator'] = gladiator;
    _data['pioneer'] = pioneer;
    _data['modern'] = modern;
    _data['legacy'] = legacy;
    _data['pauper'] = pauper;
    _data['vintage'] = vintage;
    _data['penny'] = penny;
    _data['commander'] = commander;
    _data['brawl'] = brawl;
    _data['historicbrawl'] = historicbrawl;
    _data['paupercommander'] = paupercommander;
    _data['duel'] = duel;
    _data['oldschool'] = oldschool;
    _data['premodern'] = premodern;
    return _data;
  }
}

class Prices {
  Prices({
    required this.usd,
    required this.usdFoil,
    required this.eur,
    required this.eurFoil,
    required this.tix,
  });
  late final String usd;
  late final String usdFoil;
  late final String eur;
  late final String eurFoil;
  late final String tix;

  Prices.fromJson(Map<String, dynamic> json) {
    usd = json['usd'];
    usdFoil = json['usd_foil'];
    eur = json['eur'];
    eurFoil = json['eur_foil'];
    tix = json['tix'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['usd'] = usd;
    _data['usd_foil'] = usdFoil;
    _data['eur'] = eur;
    _data['eur_foil'] = eurFoil;
    _data['tix'] = tix;
    return _data;
  }
}

class RelatedUris {
  RelatedUris({
    required this.gatherer,
    required this.tcgplayerInfiniteArticles,
    required this.tcgplayerInfiniteDecks,
    required this.edhrec,
    required this.mtgtop8,
  });
  late final String gatherer;
  late final String tcgplayerInfiniteArticles;
  late final String tcgplayerInfiniteDecks;
  late final String edhrec;
  late final String mtgtop8;

  RelatedUris.fromJson(Map<String, dynamic> json) {
    gatherer = json['gatherer'];
    tcgplayerInfiniteArticles = json['tcgplayer_infinite_articles'];
    tcgplayerInfiniteDecks = json['tcgplayer_infinite_decks'];
    edhrec = json['edhrec'];
    mtgtop8 = json['mtgtop8'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gatherer'] = gatherer;
    _data['tcgplayer_infinite_articles'] = tcgplayerInfiniteArticles;
    _data['tcgplayer_infinite_decks'] = tcgplayerInfiniteDecks;
    _data['edhrec'] = edhrec;
    _data['mtgtop8'] = mtgtop8;
    return _data;
  }
}

class PurchaseUris {
  PurchaseUris({
    required this.tcgplayer,
    required this.cardmarket,
    required this.cardhoarder,
  });
  late final String tcgplayer;
  late final String cardmarket;
  late final String cardhoarder;

  PurchaseUris.fromJson(Map<String, dynamic> json) {
    tcgplayer = json['tcgplayer'];
    cardmarket = json['cardmarket'];
    cardhoarder = json['cardhoarder'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['tcgplayer'] = tcgplayer;
    _data['cardmarket'] = cardmarket;
    _data['cardhoarder'] = cardhoarder;
    return _data;
  }
}
