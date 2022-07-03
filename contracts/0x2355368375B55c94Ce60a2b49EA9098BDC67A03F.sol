contract main {




// =====================  Runtime code  =====================


const sub_013d3be1(?) = 0

const sub_270b5674(?) = 4

const sub_4086ec11(?) = 1

const sub_64d21a51(?) = 2

const sub_841706b9(?) = 3

const sub_8452e715(?) = 3

const sub_9ba6e9c4(?) = 'StockenDeal'

const sub_b16ed258(?) = 0

const sub_d8b005f6(?) = 2

const sub_ee37bfb7(?) = 1

const sub_ee6e6338(?) = '1.1.1'


address platformAddress;
mapping of struct stor1;

function platform() {
    return platformAddress
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    if not stor1[arg1].field_256:
        revert with 0, 'identifier not found'
    if block.timestamp < stor1[arg1].field_1536:
        revert with 0, 'cannot refund before time end'
    require stor1[arg1].field_2048 <= 3
    if not stor1[arg1].field_2048:
        if stor1[arg1].field_512 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only Agreement owner can withdraw'
        stor1[arg1].field_2048 = 3
        call msg.sender with:
           value stor1[arg1].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require stor1[arg1].field_2048 <= 3
    if stor1[arg1].field_2048 == 1:
        if stor1[arg1].field_256 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only Agreement owner can withdraw'
        stor1[arg1].field_2048 = 3
        require ext_code.size(stor1[arg1].field_0)
        call stor1[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor1[arg1].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_128efd31(?) {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    if address(call.data[4]) != msg.sender:
        revert with 0, 'function can be called only from Stocken'
    require stor1[call.data[100]].field_2048 <= 3
    if stor1[call.data[100]].field_2048 == 2:
        revert with 0, 'deal already completed'
    require stor1[call.data[100]].field_2048 <= 3
    if stor1[call.data[100]].field_2048 == 3:
        revert with 0, 'deal already cancelled'
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).0xdfb5eabd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'stocken not in current platform'
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).0x23b872dd with:
         gas gas_remaining wei
        args address(call.data[36]), this.address, call.data[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1[call.data[100]].field_512:
        require stor1[call.data[100]].field_2048 <= 3
        if stor1[call.data[100]].field_2048:
            revert with 0, 'identifier already used'
    if not stor1[call.data[100]].field_256:
        mem[352] = 96
        s = 0
        idx = 96
        while 192 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while 3 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        s = 3
        idx = 192
        while 352 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 8
        while 8 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor1[call.data[100]].field_2048 = 1
    else:
        require stor1[call.data[100]].field_2048 <= 3
        if stor1[call.data[100]].field_2048:
            mem[352] = 96
            s = 0
            idx = 96
            while 192 > idx:
                stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 3
            while 3 > idx:
                stor1[call.data[100]][idx].field_0 = 0
                idx = idx + 1
                continue 
            s = 3
            idx = 192
            while 352 > idx:
                stor1[call.data[100]][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 8
            while 8 > idx:
                stor1[call.data[100]][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor1[call.data[100]].field_2048 = 1
        else:
            if call.data[132] != stor1[call.data[100]].field_1024:
                revert with 0, 'different Stocken cost'
            if call.data[164] != stor1[call.data[100]].field_1280:
                revert with 0, 'different wei cost'
            if stor1[call.data[100]].field_512 != address(call.data[68]):
                revert with 0, 'buyers should be equal'
            if stor1[call.data[100]].field_256 != address(call.data[36]):
                revert with 0, 'sellers should be equal'
            if stor1[call.data[100]].field_0 != address(call.data[4]):
                revert with 0, 'Stocken address should be equal to Agrement Stocken address'
            if call.data[228] != stor1[call.data[100]].field_1792:
                revert with 0, 'agreement Hash should be equal'
            stor1[call.data[100]].field_2048 = 2
            call address(call.data[36]) with:
               value call.data[164] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(call.data[68]), call.data[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_102449ba(?) payable {
    mem[96 len 96] = call.data[4 len 96]
    mem[192 len 160] = call.data[100 len 160]
    require stor1[call.data[100]].field_2048 <= 3
    if stor1[call.data[100]].field_2048 == 2:
        revert with 0, 'deal already completed'
    require stor1[call.data[100]].field_2048 <= 3
    if stor1[call.data[100]].field_2048 == 3:
        revert with 0, 'deal already cancelled'
    if address(call.data[68]) != msg.sender:
        revert with 0, 'sender should be buyer'
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).0xdfb5eabd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0]):
        revert with 0, 'stocken not in current platform'
    require ext_code.size(address(call.data[4]))
    call address(call.data[4]).getStatus() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[30 len 2] == 3:
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).0xcee2a9cf with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'only Investor can buy stockens on Secondary Placement'
    if stor1[call.data[100]].field_512:
        require stor1[call.data[100]].field_2048 <= 3
        if stor1[call.data[100]].field_2048 != 1:
            revert with 0, 'identifier already used'
    if call.data[164] != msg.value:
        revert with 0, 'sent wei should be equal to wei'
    if not stor1[call.data[100]].field_512:
        mem[352] = 96
        s = 0
        idx = 96
        while 192 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while 3 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        s = 3
        idx = 192
        while 352 > idx:
            stor1[call.data[100]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 8
        while 8 > idx:
            stor1[call.data[100]][idx].field_0 = 0
            idx = idx + 1
            continue 
        stor1[call.data[100]].field_2048 = 0
        stor1[call.data[100]].field_2304 = 0
    else:
        require stor1[call.data[100]].field_2048 <= 3
        if stor1[call.data[100]].field_2048 != 1:
            mem[352] = 96
            s = 0
            idx = 96
            while 192 > idx:
                stor1[call.data[100]][s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 3
            while 3 > idx:
                stor1[call.data[100]][idx].field_0 = 0
                idx = idx + 1
                continue 
            s = 3
            idx = 192
            while 352 > idx:
                stor1[call.data[100]][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 8
            while 8 > idx:
                stor1[call.data[100]][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor1[call.data[100]].field_2048 = 0
            stor1[call.data[100]].field_2304 = 0
        else:
            if call.data[132] != stor1[call.data[100]].field_1024:
                revert with 0, 'different Stocken cost'
            if call.data[164] != stor1[call.data[100]].field_1280:
                revert with 0, 'different wei cost'
            if stor1[call.data[100]].field_256 != address(call.data[36]):
                revert with 0, 'sellers should be equal'
            if stor1[call.data[100]].field_512 != msg.sender:
                revert with 0, 'buyers should be equal'
            if stor1[call.data[100]].field_0 != address(call.data[4]):
                revert with 0, 'Stocken address should be equal to Agrement Stocken address'
            if call.data[228] != stor1[call.data[100]].field_1792:
                revert with 0, 'agreement Hash should be equal'
            stor1[call.data[100]].field_2048 = 2
            call address(call.data[36]) with:
               value call.data[164] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(call.data[4]))
            call address(call.data[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, call.data[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
