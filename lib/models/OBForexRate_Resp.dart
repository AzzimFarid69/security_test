class OBForexRateResp {
  List<OBForexRateData> obForexDetailList;

  OBForexRateResp({this.obForexDetailList});
}

class OBForexRateData {
  double buyingTT;
  double sellingTT;
  double buyingDD;
  double buyingNotes;
  double sellingNotes;
  String currency;

  OBForexRateData({
    this.buyingTT,
    this.sellingTT,
    this.buyingDD,
    this.buyingNotes,
    this.sellingNotes,
    this.currency,
  });
}
