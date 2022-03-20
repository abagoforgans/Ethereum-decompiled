contract main {


// =======================  Init code  ======================


uint256 stor0;
uint32 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[49 len 926]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct sub_7069ce18;
uint32 numberOfSales;
uint256 stor2;
uint256 totalTokens;
array of uint256 sub_b9875b29;
array of uint256 sub_9775e26f;

function numberOfSales() payable {
    return uint32(numberOfSales)
}

function sub_7069ce18(?) payable {
    require arg1 < sub_7069ce18.length
    return sub_7069ce18[arg1].field_0
}

function totalTokens() payable {
    return totalTokens
}

function owner() payable {
    return address(owner)
}

function sub_9775e26f(?) payable {
    require arg1 < sub_7069ce18.length
    return sub_9775e26f[arg1]
}

function sub_b9875b29(?) payable {
    require arg1 < sub_7069ce18.length
    return sub_b9875b29[arg1]
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sales(uint256 arg1) payable {
    require arg1 < sub_7069ce18.length
    return sub_7069ce18[arg1].field_0, sub_b9875b29[arg1], sub_9775e26f[arg1]
}

function sub_ba2ad82b(?) payable {
    if address(owner) == msg.sender:
        sub_7069ce18.length++
        if not sub_7069ce18.length <= sub_7069ce18.length + 1:
            idx = (3 * sub_7069ce18.length) + 3
            while 3 * sub_7069ce18.length > idx:
                sub_7069ce18[idx].field_0 = 0
                sub_7069ce18[idx].field_256 = 0
                sub_7069ce18[idx].field_512 = 0
                idx = idx + 1
                continue 
        sub_7069ce18[sub_7069ce18.length].field_0 = arg1
        sub_7069ce18[sub_7069ce18.length].field_256 = arg2
        sub_7069ce18[sub_7069ce18.length].field_512 = arg3
        uint256(stor2) = uint32(numberOfSales) + 1 or Mask(224, 32, uint256(stor2))
        totalTokens += arg2
}



}
