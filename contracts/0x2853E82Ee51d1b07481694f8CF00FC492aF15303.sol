contract main {


// =======================  Init code  ======================


array of address stor0;
array of address stor1;
address stor2;
address stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    mem[96] = 0xfd9285284b16148b8aaebee9123c638fab242cab
    mem[128] = 0x3deaaa3f9affe686ed1f0bd6a8b86961175f3d90
    stor0.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        stor0[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor0.length > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    mem[160] = 0x4230ed77f9890349542d74d03b3aa8c5c13f68b
    mem[192] = 0x152f59eaaeb5c7e98afc664791c3c32015ac61b9
    stor1.length = 2
    s = 0
    idx = 160
    while 224 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    stor2 = 0x7fdc3a3adf3c701429f3e808efba16995f7a167d
    stor4 = 5
    require not msg.value
    require code.data[2646 len 20]
    require code.data[2666 len 32] > 0
    require code.data[2698 len 32] > 0
    require code.data[2730 len 32] > 0
    stor3 = msg.sender
    stor5 = code.data[2646 len 20]
    stor4 = code.data[2666 len 32]
    stor6 = code.data[2698 len 32]
    stor7 = code.data[2730 len 32]
    stor8 = 0
    stor11 = 0
    require ext_code.size(code.data[2646 len 20])
    call code.data[2646 len 20].getContractInfo() with:
         gas gas_remaining wei
    require ext_call.success
    stor10 = ext_call.return_data[160]
    stor9 = ext_call.return_data[192]
    require ext_code.size(address(code.data[2634 len 32]))
    call address(code.data[2634 len 32]).0x3e4fd89a with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return code.data[849 len 1785]
}



// =====================  Runtime code  =====================


const getVersion = 'v1.0.3'


array of address stor0;
address stor3;
uint256 exchangeRate;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 status;

function getStatus() {
    require status <= 1
    return status
}

function getExchangeRate() {
    return exchangeRate
}

function _fallback() payable {
    revert
}

function getInfo() {
    return exchangeRate, stor6, stor7, stor8, stor3
}

function closeContract() {
    require stor5 == msg.sender
    status = 1
}

function sub_15c47753(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[uint8(idx)] != msg.sender:
        require uint8(idx + 1) < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    return stor5, stor9, stor10
}

function invest() payable {
    require status <= 1
    require status != 1
    require block.timestamp >= stor9
    require block.timestamp < stor10
    require stor8 < stor6
    require msg.value >= stor7
    require ext_code.size(stor5)
    call stor5.0x4e69d560 with:
         gas gas_remaining wei
    require ext_call.success
    if ext_call.return_data[0] != 1:
        require ext_call.return_data[0] == 3
    require ext_code.size(stor5)
    call stor5.0xdfccdcd0 with:
         gas gas_remaining wei
        args msg.value
    require ext_call.success
    require ext_call.return_data[0] + stor8 >= stor8
    if ext_call.return_data[0] + stor8 <= stor6:
        require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.0x85e74fed with:
           value ext_call.return_data[32] + ext_call.return_data[0] wei
             gas gas_remaining wei
            args exchangeRate, msg.sender, this.address
        require ext_call.success
        require ext_call.return_data[0] + stor8 >= stor8
        stor8 += ext_call.return_data[0]
    else:
        require stor8 <= stor6
        require stor6 - stor8 <= msg.value
        require ext_code.size(stor5)
        call stor5.0xec26fe84 with:
             gas gas_remaining wei
            args (stor6 - stor8)
        require ext_call.success
        require ext_call.return_data[32] <= msg.value - stor6 + stor8
        require ext_call.return_data[32] >= 0
        require ext_code.size(stor5)
        call stor5.0x85e74fed with:
           value ext_call.return_data[32] + stor6 - stor8 wei
             gas gas_remaining wei
            args exchangeRate, msg.sender, this.address
        require ext_call.success
        stor8 += ext_call.return_data[0]
        call msg.sender with:
           value msg.value - stor6 + stor8 - ext_call.return_data[32] wei
             gas 2300 * is_zero(value) wei
}



}
