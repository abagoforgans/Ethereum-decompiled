contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1084] = code.data[1351 len -1084]
    mem[64] = -988
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
    return code.data[267 len 1084]
}



// =====================  Runtime code  =====================


address publisherAddress;
uint256 sub_7a5be237;
uint256 price;
array of uint256 description;
mapping of uint256 sub_a5d360fd;

function description(uint256 arg1) payable {
    require arg1 < description.length
    return description[arg1]
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
    return sub_a5d360fd[arg1]
}

function _fallback() payable {
  stop
}

function sub_856d62a3(?) payable {
    return 0, sub_a5d360fd[0]
}

function Subscribe(address arg1, uint256 arg2) payable {
    if sub_7a5be237 >= arg2:
        sub_a5d360fd[address(arg1)] += arg2
        sub_7a5be237 -= arg2
}

function Trade(address arg1, address arg2, uint256 arg3) payable {
    if sub_a5d360fd[address(arg2)] >= arg3:
        sub_a5d360fd[address(arg2)] -= arg3
        sub_a5d360fd[address(arg1)] += arg3
}



}
