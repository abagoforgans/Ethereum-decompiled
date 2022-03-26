contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint8 stor13;

function _fallback() payable {
    stor0 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor1 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor3 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor4 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor5 = 0
    stor6 = 0
    stor13 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[159 len 3217]
}



// =====================  Runtime code  =====================


address sub_113b67c9Address;
address sub_00b1d5e9Address;
address owner;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of uint256 stor9;
uint256 sub_3adab4ee;
uint256 sub_717700a4;
uint256 sub_3cb3025a;
uint8 sub_3253d0f8;
uint256 sub_c69433d7;
uint256 sub_caafa996;
uint8 win;
uint32 stor17;
uint256 stor17; offset 32
uint256 ran;
uint256 j;

function sub_00b1d5e9(?) {
    return sub_00b1d5e9Address
}

function ran() {
    return ran
}

function sub_113b67c9(?) {
    return sub_113b67c9Address
}

function sub_3253d0f8(?) {
    return bool(sub_3253d0f8)
}

function sub_3adab4ee(?) {
    return sub_3adab4ee
}

function sub_3cb3025a(?) {
    return sub_3cb3025a
}

function win() {
    return bool(win)
}

function sub_717700a4(?) {
    return sub_717700a4
}

function owner() {
    return owner
}

function j() {
    return j
}

function sub_c69433d7(?) {
    return sub_c69433d7
}

function sub_caafa996(?) {
    return sub_caafa996
}

function cashOut() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1fe50139(?) {
    delegate sub_00b1d5e9Address with:
       funct (Mask(32, 224, sha3('attack(uint256,uint256,uint256[]', ')')) >> 224)
         gas gas_remaining - 50 wei
        args stor7, stor8, 9
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_4a0225b1(?) {
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor8
    require ext_call.success
    delegate sub_00b1d5e9Address with:
       funct (Mask(32, 224, sha3('attack(uint256,uint256,uint256[]', ')')) >> 224)
         gas gas_remaining - 50 wei
        args stor7, stor8, 9
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor8
    require ext_call.success
    require ext_call.return_data[0] != ext_call.return_data[0]
}

function sub_6f064aa5(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    stor7 = arg1
    stor8 = arg2
    stor9.length = arg3.length
    if not arg3.length:
        idx = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while stor9.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * arg3.length) + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while stor9.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}

function attack() {
    require ext_code.size(stor3)
    call stor3.getPlayerID(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    sub_3adab4ee = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor7
    mem[864 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_717700a4 = ext_call.return_data[0]
    mem[2208] = 0
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor8
    mem[1536 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_3cb3025a = ext_call.return_data[0]
    sub_3253d0f8 = 0
    idx = 0
    while idx < stor9.length:
        sub_c69433d7 = 0
        win = 0
        uint32(stor17.field_0) = uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673)
        Mask(224, 0, stor17.field_32) = 0
        require stor9[idx] < 10
        if 1 == mem[(32 * stor9[idx]) + 1088]:
            sub_c69433d7 = 0
            sub_caafa996 = 0
            j = 0
            # nil
        else:
            require idx < stor9.length
            require stor9[idx] < 10
            if 2 == mem[(32 * stor9[idx]) + 1088]:
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
            else:
                require idx < stor9.length
                mem[0] = 9
                require stor9[idx] < 10
                if mem[(32 * stor9[idx]) + 1088] != 3:
                    idx = idx + 1
                    continue 
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
    if not sub_3253d0f8:
        stor6++
    else:
        stor5++
        delegate sub_00b1d5e9Address with:
           funct (Mask(32, 224, sha3('attack(uint256,uint256,uint256[]', ')')) >> 224)
             gas gas_remaining - 50 wei
            args stor7, stor8, 9
        require delegate.return_code
}

function _fallback() payable {
    require ext_code.size(stor3)
    call stor3.getPlayerID(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    sub_3adab4ee = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor7
    mem[864 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_717700a4 = ext_call.return_data[0]
    mem[2208] = 0
    require ext_code.size(stor3)
    call stor3.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor8
    mem[1536 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_3cb3025a = ext_call.return_data[0]
    sub_3253d0f8 = 0
    idx = 0
    while idx < stor9.length:
        sub_c69433d7 = 0
        win = 0
        uint32(stor17.field_0) = uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673)
        Mask(224, 0, stor17.field_32) = 0
        require stor9[idx] < 10
        if 1 == mem[(32 * stor9[idx]) + 1088]:
            sub_c69433d7 = 0
            sub_caafa996 = 0
            j = 0
            # nil
        else:
            require idx < stor9.length
            require stor9[idx] < 10
            if 2 == mem[(32 * stor9[idx]) + 1088]:
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
            else:
                require idx < stor9.length
                mem[0] = 9
                require stor9[idx] < 10
                if mem[(32 * stor9[idx]) + 1088] != 3:
                    idx = idx + 1
                    continue 
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
    if not sub_3253d0f8:
        stor6++
    else:
        stor5++
        delegate sub_00b1d5e9Address with:
           funct (Mask(32, 224, sha3('attack(uint256,uint256,uint256[]', ')')) >> 224)
             gas gas_remaining - 50 wei
            args stor7, stor8, 9
        require delegate.return_code
}



}
