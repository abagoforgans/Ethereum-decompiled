contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1063] = code.data[1330 len -1063]
    mem[64] = -967
    stor0 = mem[96]
    stor1 = mem[128]
    stor2 = mem[160]
    stor3.length = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    return code.data[267 len 1063]
}



// =====================  Runtime code  =====================


address publisherAddress;
uint256 sub_7a5be237;
uint256 price;
array of uint256 description;
mapping of uint256 sub_6d204631;

function description(uint256 arg1) payable {
    require arg1 < description.length
    return description[arg1]
}

function sub_6d204631(?) payable {
    return sub_6d204631[address(arg1)]
}

function sub_7a5be237(?) payable {
    return sub_7a5be237
}

function publisher() payable {
    return publisherAddress
}

function price() payable {
    return price
}

function sub_a5d360fd(?) payable {
    return sub_6d204631[arg1]
}

function _fallback() payable {
  stop
}

function Subscribe(address arg1, uint256 arg2) payable {
    if sub_7a5be237 >= arg2:
        sub_6d204631[address(arg1)] += arg2
        sub_7a5be237 -= arg2
}

function Trade(address arg1, address arg2, uint256 arg3) payable {
    if sub_6d204631[address(arg2)] >= arg3:
        sub_6d204631[address(arg2)] -= arg3
        sub_6d204631[address(arg1)] += arg3
}



}
