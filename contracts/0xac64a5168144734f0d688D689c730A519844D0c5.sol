contract main {


// =======================  Init code  ======================


uint256 stor0;
uint32 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[49 len 599]
}



// =====================  Runtime code  =====================


address owner;
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
    return owner
}

function _fallback() payable {
  stop
}

function sales(uint256 arg1) payable {
    require arg1 < stor1.length
    return stor1[arg1].field_0, storB10E[arg1], storB10E[arg1]
}

function sub_dcc61019(?) payable {
    if owner == msg.sender:
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
        stor1[stor1.length].field_512 = block.timestamp
        uint256(stor2) = uint32(numberOfSales) + 1 or Mask(224, 32, uint256(stor2))
        totalTokens += arg2
}



}
