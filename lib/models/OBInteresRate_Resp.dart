class OBInterestRateResp {
  List<InterestRateProductDetailDTO> productCategoryList;
  List<ObFixedDepositRate> obFixedDepositRateDetails;
  List<ProductDetailsDTO> productDetails;

  OBInterestRateResp({
    this.productCategoryList,
    this.obFixedDepositRateDetails,
    this.productDetails,
  });
}

class InterestRateProductDetailDTO {
  String code;
  String name;
  String type;
  String id;

  InterestRateProductDetailDTO({
    this.code,
    this.name,
    this.type,
    this.id,
  });
}

class ObFixedDepositRate {
  String investmentProduct;
  String currency;
  String tenure;
  String rate;

  ObFixedDepositRate({
    this.investmentProduct,
    this.currency,
    this.tenure,
    this.rate,
  });
}

class ProductDetailsDTO {
  String productCode;
  String productType;
  String productName;
  String currencyType;
  String interestRate;
  List<ProductDescriptionDetails> productDescriptionDetails;

  ProductDetailsDTO({
    this.productCode,
    this.productType,
    this.productName,
    this.currencyType,
    this.interestRate,
    this.productDescriptionDetails,
  });
}

class ProductDescriptionDetails {
  String id;
  String type;
  String shortDescription;
  String lang;

  ProductDescriptionDetails({
    this.id,
    this.type,
    this.shortDescription,
    this.lang,
  });
}
