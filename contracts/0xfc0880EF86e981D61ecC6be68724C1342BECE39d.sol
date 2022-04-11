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
    stor21 = 0x748e024a49b9db9b2c50489b7bc43553605b5bbe
    stor20 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    stor19 = stor20
    stor18 = stor21
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    return code.data[629 len 5904]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of address stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
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

function killContract() {
    if stor17 != msg.sender:
    selfdestruct(stor17)
}

function _fallback() payable {
    revert
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
    if stor17 == msg.sender:
        if not stor0[address(msg.sender)]:
            stor0[address(msg.sender)] = stor2
            stor1[stor2] = msg.sender
            stor2++
        stor3[address(arg1)] += arg2
        stor10 += arg2
        stor4[address(arg1)] += arg3
        stor11 += arg3
        stor5[address(arg1)] += arg4
        stor12 += arg4
        stor6[address(arg1)] += arg5
        stor13 += arg5
        stor7[address(arg1)] += arg6
        stor14 += arg6
        stor8[address(arg1)] += arg7
        stor15 += arg7
        stor9[address(arg1)] += arg8
        stor16 += arg8
}

function over() {
    require ext_code.size(stor18)
    call stor18.getSold() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 1
    while idx <= stor2:
        require stor10
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor3[stor1[idx]] / stor10
        require ext_call.success
        require stor11
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor4[stor1[idx]] / stor11
        require ext_call.success
        require stor12
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 15 * 2 * ext_call.return_data[0] / 100 / 100 * stor5[stor1[idx]] / stor12
        require ext_call.success
        require stor13
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor6[stor1[idx]] / stor13
        require ext_call.success
        require stor14
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 20 * 2 * ext_call.return_data[0] / 100 / 100 * stor7[stor1[idx]] / stor14
        require ext_call.success
        require stor15
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 10 * 2 * ext_call.return_data[0] / 100 / 100 * stor8[stor1[idx]] / stor15
        require ext_call.success
        mem[0] = stor1[idx]
        mem[32] = 9
        require stor16
        mem[100] = stor17
        mem[132] = stor1[idx]
        mem[164] = 25 * 2 * ext_call.return_data[0] / 100 / 100 * stor9[stor1[idx]] / stor16
        require ext_code.size(stor19)
        call stor19.0x23b872dd with:
             gas gas_remaining - 710 wei
            args stor17, stor1[idx], 25 * 2 * ext_call.return_data[0] / 100 / 100 * stor9[stor1[idx]] / stor16
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
