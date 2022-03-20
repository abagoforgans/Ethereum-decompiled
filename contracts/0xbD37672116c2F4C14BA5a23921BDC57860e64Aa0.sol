contract main {


// =======================  Init code  ======================


uint256 stor0;
uint32 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[49 len 419]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct saleDate;
uint32 numberOfSales;
uint256 stor2; offset 32
uint256 stor2;
uint256 totalTokens;

function numberOfSales() payable {
    return numberOfSales
}

function sales(bytes16 arg1) payable {
    return saleDate[arg1].field_0, saleDate[arg1].field_256
}

function totalTokens() payable {
    return totalTokens
}

function getSaleDate(bytes16 arg1) payable {
    return saleDate[arg1].field_0, saleDate[arg1].field_256
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function newSale(bytes16 arg1, uint256 arg2, uint256 arg3) payable {
    if address(owner) == msg.sender:
        saleDate[arg1].field_0 = arg2
        saleDate[arg1].field_256 = arg3
        uint256(stor2.field_0) = Mask(224, 0, stor2.field_32)
        totalTokens += arg2
}



}
