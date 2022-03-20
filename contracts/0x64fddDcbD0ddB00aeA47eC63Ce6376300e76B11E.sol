contract main {


// =======================  Init code  ======================


uint256 stor0;
uint32 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[49 len 670]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
uint32 numberOfSales;
uint256 stor2;
uint256 totalTokens;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function numberOfSales() payable {
    return uint32(numberOfSales)
}

function totalTokens() payable {
    return totalTokens
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert 
}

function sales(uint256 arg1) payable {
    require arg1 < stor1.length
    return stor1[arg1].field_0, storB10E[arg1], storB10E[arg1]
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_ba2ad82b(?) payable {
    if address(owner) == msg.sender:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = (3 * stor1.length) + 3
            while 3 * stor1.length > idx:
                stor1[idx].field_0 = 0
                stor1[idx].field_256 = 0
                stor1[idx].field_512 = 0
                idx = idx + 1
                continue 
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_256 = arg2
        stor1[stor1.length].field_512 = arg3
        uint256(stor2) = uint32(numberOfSales) + 1 or Mask(224, 32, uint256(stor2))
        totalTokens += arg2
}



}
