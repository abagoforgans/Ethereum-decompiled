contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;

function _fallback() {
    stor2 = 1
    stor18 = stor21
    stor17 = msg.sender
    stor21 = 0xa2892958a17687ea7e038a876570bd782c726780
    stor20 = 0x1c8435cf0cadb438c2a3515e3291963ec9d1088
    stor19 = stor20
    stor18 = stor21
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    return code.data[629 len 6276]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of address stor1;
uint256 number;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
uint256 sub_3a5504f9;
uint256 sub_f0e42fc2;
uint256 sub_24a461d3;
uint256 sub_b3b1d205;
uint256 sub_3fd158f0;
uint256 sub_c913f485;
uint256 sub_8b7b2ece;
address owner;
address stor18;
address stor19;

function sub_24a461d3(?) {
    return sub_24a461d3
}

function sub_3a5504f9(?) {
    return sub_3a5504f9
}

function sub_3fd158f0(?) {
    return sub_3fd158f0
}

function number() {
    return number
}

function sub_8b7b2ece(?) {
    return sub_8b7b2ece
}

function owner() {
    return owner
}

function sub_b3b1d205(?) {
    return sub_b3b1d205
}

function sub_c913f485(?) {
    return sub_c913f485
}

function sub_f0e42fc2(?) {
    return sub_f0e42fc2
}

function killContract() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_40c58afb(?) {
    if owner == msg.sender:
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
}

function sub_1d781e4f(?) {
    return stor3[address(arg1)], 
           stor4[address(arg1)],
           stor5[address(arg1)],
           stor6[address(arg1)],
           stor7[address(arg1)],
           stor8[address(arg1)],
           stor9[address(arg1)]
}

function sub_cfe7bd22(?) {
    if owner == msg.sender:
        if not stor0[address(msg.sender)]:
            stor0[address(msg.sender)] = number
            stor1[stor2] = msg.sender
            number++
        stor3[address(arg1)] += arg2
        sub_3a5504f9 += arg2
        stor4[address(arg1)] += arg3
        sub_f0e42fc2 += arg3
        stor5[address(arg1)] += arg4
        sub_24a461d3 += arg4
        stor6[address(arg1)] += arg5
        sub_b3b1d205 += arg5
        stor7[address(arg1)] += arg6
        sub_3fd158f0 += arg6
        stor8[address(arg1)] += arg7
        sub_c913f485 += arg7
        stor9[address(arg1)] += arg8
        sub_8b7b2ece += arg8
}

function over() {
    require ext_code.size(stor18)
    call stor18.0x8f282b87 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 1
    while idx <= number:
        require sub_3a5504f9
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor3[stor1[idx]] / sub_3a5504f9
        require ext_call.success
        require sub_f0e42fc2
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor4[stor1[idx]] / sub_f0e42fc2
        require ext_call.success
        require sub_24a461d3
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 15 * 2 * ext_call.return_data[0] / 100 / 100 * stor5[stor1[idx]] / sub_24a461d3
        require ext_call.success
        require sub_b3b1d205
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor6[stor1[idx]] / sub_b3b1d205
        require ext_call.success
        require sub_3fd158f0
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 20 * 2 * ext_call.return_data[0] / 100 / 100 * stor7[stor1[idx]] / sub_3fd158f0
        require ext_call.success
        require sub_c913f485
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor8[stor1[idx]] / sub_c913f485
        require ext_call.success
        mem[0] = stor1[idx]
        mem[32] = 9
        require sub_8b7b2ece
        mem[100] = stor1[idx]
        mem[132] = 25 * 2 * ext_call.return_data[0] / 100 / 100 * stor9[stor1[idx]] / sub_8b7b2ece
        require ext_code.size(stor19)
        call stor19.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1[idx], 25 * 2 * ext_call.return_data[0] / 100 / 100 * stor9[stor1[idx]] / sub_8b7b2ece
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
