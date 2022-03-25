contract main {


// =======================  Init code  ======================


uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
uint8 stor10; offset 32
uint8 stor12;
uint256 stor13;
uint256 stor15;
uint256 stor18;
uint256 stor19;
uint8 stor21;
uint8 stor21; offset 8
address stor21; offset 16

function _fallback() payable {
    stor12 = 0
    uint8(stor10.field_16) = 0
    uint8(stor10.field_24) = 0
    uint8(stor21.field_8) = 0
    uint8(stor10.field_32) = 0
    stor13 = 0
    uint8(stor10.field_8) = 0
    uint8(stor21.field_0) = 0
    stor15 = 0
    stor18 = 21000
    stor19 = 200
    address(stor21.field_16) = 0xdc78e37377eb0493cb41bd1900a541626fdc2f02
    return code.data[303 len 6171]
}



// =====================  Runtime code  =====================


address importerAddress;
uint256 stor0;
address exporterAddress;
uint256 stor1;
address importerBankerAddress;
uint256 stor2;
address exporterBankerAddress;
uint256 stor3;
address bAInvestorAddress;
uint256 stor4;
uint256 shippingDate;
uint256 price;
array of uint256 item;
uint256 amountOfItem;
uint256 discountDivisor;
uint8 importersBanksLetterOfCredit;
uint8 exporterAcceptedIBankDraft; offset 8
uint8 tradeDealRequested; offset 16
uint8 tradeDealConfirmed; offset 24
uint8 bankersAcceptanceOfDeal; offset 32
uint256 importersBanksDraftMaturityDate;
uint8 productsExported;
uint256 discountedDealAmount;
uint256 dealAmount;
uint256 currentLiquidInDeal;
array of uint256 trackingNo;
array of uint256 shippingService;
uint256 gasPrice;
uint256 minimumDealAmount;
uint256 bASalesPrice;
uint8 exporterReceivedPayment;
uint8 productsShipped; offset 8
address creatorAddress; offset 16

function exporterBanker() payable {
    return address(exporterBankerAddress)
}

function productsExported() payable {
    return bool(productsExported)
}

function importerBanker() payable {
    return address(importerBankerAddress)
}

function bankersAcceptanceOfDeal() payable {
    return bool(bankersAcceptanceOfDeal)
}

function importersBanksDraftMaturityDate() payable {
    return importersBanksDraftMaturityDate
}

function exporter() payable {
    return address(exporterAddress)
}

function BASalesPrice() payable {
    return bASalesPrice
}

function exporterReceivedPayment() payable {
    return bool(exporterReceivedPayment)
}

function importer() payable {
    return address(importerAddress)
}

function productsShipped() payable {
    return bool(productsShipped)
}

function minimumDealAmount() payable {
    return minimumDealAmount
}

function tradeDealConfirmed() payable {
    return bool(tradeDealConfirmed)
}

function tradeDealRequested() payable {
    return bool(tradeDealRequested)
}

function price() payable {
    return price
}

function exporterAcceptedIBankDraft() payable {
    return bool(exporterAcceptedIBankDraft)
}

function trackingNo() payable {
    return trackingNo[0 len trackingNo.length]
}

function amountOfItem() payable {
    return amountOfItem
}

function BAInvestor() payable {
    return address(bAInvestorAddress)
}

function shippingDate() payable {
    return shippingDate
}

function discountedDealAmount() payable {
    return discountedDealAmount
}

function dealAmount() payable {
    return dealAmount
}

function shippingService() payable {
    return shippingService[0 len shippingService.length]
}

function creatorAddress() payable {
    return creatorAddress
}

function discountDivisor() payable {
    return discountDivisor
}

function item() payable {
    return item[0 len item.length]
}

function importersBanksLetterOfCredit() payable {
    return bool(importersBanksLetterOfCredit)
}

function currentLiquidInDeal() payable {
    return currentLiquidInDeal
}

function gasPrice() payable {
    return gasPrice
}

function kill() payable {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function setImporter() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function setExporter() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}

function setExporterBank() payable {
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function setImporterBank() payable {
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
}

function acceptBankDraft() payable {
    if msg.sender == address(exporterAddress):
        exporterAcceptedIBankDraft = 1
}

function acceptTradeDeal() payable {
    if address(exporterAddress) != msg.sender:
        return 0
    if not tradeDealRequested:
        return 0
    tradeDealConfirmed = 1
    return 1
}

function _fallback() payable {
    if creatorAddress != msg.sender:
        require currentLiquidInDeal == 21001
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function buyBankerAgreementFromImporterBank() payable {
    require exporterReceivedPayment
    require msg.value > bASalesPrice
    call address(importerBankerAddress) with:
       value msg.value wei
         gas 0 wei
    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
}

function shipProducts(string arg1, string arg2) payable {
    if address(exporterAddress) != msg.sender:
        return 0
    if not exporterAcceptedIBankDraft:
        return 0
    if bool(importersBanksLetterOfCredit) != 1:
        return 0
    productsExported = 1
    if bool(productsShipped) == 1:
        bankersAcceptanceOfDeal = 1
    return 1
}

function issueLetterOfCredit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if address(importerBankerAddress) != msg.sender:
        return 0
    if bool(tradeDealConfirmed) != 1:
        return 0
    discountDivisor = arg2
    discountedDealAmount = dealAmount - (dealAmount / arg2)
    if msg.value < discountedDealAmount:
        return 0
    bASalesPrice = arg3
    importersBanksLetterOfCredit = 1
    return 1
}

function receivePaymentForGoodsSoldEarly() payable {
    if address(exporterAddress) != msg.sender:
        return 0
    if bool(bankersAcceptanceOfDeal) != 1:
        return 0
    if bool(exporterAcceptedIBankDraft) != 1:
        return 0
    exporterReceivedPayment = 1
    address(bAInvestorAddress) = address(importerBankerAddress)
    call tx.origin with:
       value currentLiquidInDeal - gasPrice wei
         gas 0 wei
    if not ext_call.success:
        return 0
    currentLiquidInDeal = gasPrice
    return 1
}

function requestTradeDeal(uint256 arg1, uint256 arg2, string arg3) payable {
    if msg.sender == address(importerAddress):
        if bool(exporterAcceptedIBankDraft) != 1:
            price = arg1
            amountOfItem = arg2
            item[] = Array(len=arg3.length, data=arg3[all])
            dealAmount = price * amountOfItem
            if dealAmount >= minimumDealAmount:
                tradeDealRequested = 1
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function payImporterBankForGoodsBought() payable {
    if address(importerAddress) != msg.sender:
        return 0
    if msg.value < dealAmount:
        return 0
    call address(bAInvestorAddress) with:
       value dealAmount - gasPrice wei
         gas 0 wei
    require ext_call.success
    dealAmount = 0
    productsExported = 0
    tradeDealRequested = 0
    tradeDealConfirmed = 0
    bankersAcceptanceOfDeal = 0
    discountedDealAmount = 0
    exporterAcceptedIBankDraft = 0
    exporterReceivedPayment = 0
    currentLiquidInDeal = 0
    return 1
}



}
