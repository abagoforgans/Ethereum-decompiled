contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor6;
uint8 stor13;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor6 = 0
    stor13 = 0
    stor0 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor1 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    return code.data[127 len 3331]
}



// =====================  Runtime code  =====================


const sub_00b1d5e9(?) = 0x3f593a15eb60672687c32492b62ed3e10e149ec6

const sub_113b67c9(?) = 0xb40d0312bac389ae0a05053020aac80c9237358b

const owner = msg.sender


address stor0;
uint256 wins;
uint256 sub_b8ee5289;
uint256 sub_3b5819fb;
uint256 sub_8b18a817;
uint8 sub_726a0a90;
uint256 stor6;
uint256 sub_dccafcd2;
uint256 sub_c39aaa22;
array of uint256 sub_cff99385;
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

function ran() {
    return ran
}

function wins() {
    return wins
}

function sub_3253d0f8(?) {
    return bool(sub_3253d0f8)
}

function sub_3adab4ee(?) {
    return sub_3adab4ee
}

function sub_3b5819fb(?) {
    return sub_3b5819fb
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

function sub_726a0a90(?) {
    return bool(uint8(sub_726a0a90))
}

function sub_8b18a817(?) {
    return sub_8b18a817
}

function j() {
    return j
}

function sub_b8ee5289(?) {
    return sub_b8ee5289
}

function sub_c39aaa22(?) {
    return sub_c39aaa22
}

function sub_c69433d7(?) {
    return sub_c69433d7
}

function sub_caafa996(?) {
    return sub_caafa996
}

function sub_cff99385(?) {
    require arg1 < sub_cff99385.length
    return sub_cff99385[arg1]
}

function sub_dccafcd2(?) {
    return sub_dccafcd2
}

function cashOut() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1fe50139(?) {
    delegate 0x3f593a15eb60672687c32492b62ed3e10e149ec6 with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_4a0225b1(?) {
    require ext_code.size(stor0)
    call stor0.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args sub_c39aaa22
    require ext_call.success
    delegate 0x3f593a15eb60672687c32492b62ed3e10e149ec6 with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    require delegate.return_data[0]
    require ext_code.size(stor0)
    call stor0.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args sub_c39aaa22
    require ext_call.success
    require ext_call.return_data[0] != ext_call.return_data[0]
}

function sub_a21fee17(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    uint256(stor6) = arg1 or Mask(248, 8, uint256(stor6))
    sub_dccafcd2 = arg2
    sub_c39aaa22 = arg3
    sub_cff99385.length = arg4.length
    if not arg4.length:
        idx = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while sub_cff99385.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * arg4.length) + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while sub_cff99385.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    sub_3b5819fb = arg5
}

function sub_3531b635(?) {
    require ext_code.size(stor0)
    call stor0.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args sub_dccafcd2
    mem[864 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_717700a4 = ext_call.return_data[0]
    mem[2208] = 0
    require ext_code.size(stor0)
    call stor0.getCity(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args sub_c39aaa22
    mem[1536 len 672] = ext_call.return_data[0 len 672]
    require ext_call.success
    sub_3cb3025a = ext_call.return_data[0]
    sub_8b18a817 = 0
    sub_3253d0f8 = 0
    idx = 0
    while idx < sub_cff99385.length:
        sub_c69433d7 = 0
        win = 0
        uint32(stor17.field_0) = uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673)
        Mask(224, 0, stor17.field_32) = 0
        require sub_cff99385[idx] < 10
        if 1 == mem[(32 * sub_cff99385[idx]) + 1088]:
            sub_c69433d7 = 0
            sub_caafa996 = 0
            j = 0
            # nil
        else:
            require idx < sub_cff99385.length
            require sub_cff99385[idx] < 10
            if 2 == mem[(32 * sub_cff99385[idx]) + 1088]:
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
            else:
                require idx < sub_cff99385.length
                mem[0] = 9
                require sub_cff99385[idx] < 10
                if mem[(32 * sub_cff99385[idx]) + 1088] != 3:
                    idx = idx + 1
                    continue 
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
    if not sub_3253d0f8:
        sub_b8ee5289++
    else:
        wins++
        delegate 0x3f593a15eb60672687c32492b62ed3e10e149ec6 with:
           funct call.data[0 len 4]
             gas gas_remaining - 50 wei
            args call.data[4 len calldata.size - 4]
        require delegate.return_code
}

function _fallback() payable {
    if uint8(sub_726a0a90):
        delegate 0x3f593a15eb60672687c32492b62ed3e10e149ec6 with:
           funct call.data[0 len 4]
             gas gas_remaining - 50 wei
            args call.data[4 len calldata.size - 4]
        require delegate.return_code
    else:
        require ext_code.size(stor0)
        call stor0.getCity(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args sub_dccafcd2
        mem[864 len 672] = ext_call.return_data[0 len 672]
        require ext_call.success
        sub_717700a4 = ext_call.return_data[0]
        mem[2208] = 0
        require ext_code.size(stor0)
        call stor0.getCity(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args sub_c39aaa22
        mem[1536 len 672] = ext_call.return_data[0 len 672]
        require ext_call.success
        sub_3cb3025a = ext_call.return_data[0]
        sub_8b18a817 = 0
        sub_3253d0f8 = 0
        idx = 0
        while idx < sub_cff99385.length:
            sub_c69433d7 = 0
            win = 0
            uint32(stor17.field_0) = uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673)
            Mask(224, 0, stor17.field_32) = 0
            require sub_cff99385[idx] < 10
            if 1 == mem[(32 * sub_cff99385[idx]) + 1088]:
                sub_c69433d7 = 0
                sub_caafa996 = 0
                j = 0
                # nil
            else:
                require idx < sub_cff99385.length
                require sub_cff99385[idx] < 10
                if 2 == mem[(32 * sub_cff99385[idx]) + 1088]:
                    sub_c69433d7 = 0
                    sub_caafa996 = 0
                    j = 0
                    # nil
                else:
                    require idx < sub_cff99385.length
                    mem[0] = 9
                    require sub_cff99385[idx] < 10
                    if mem[(32 * sub_cff99385[idx]) + 1088] != 3:
                        idx = idx + 1
                        continue 
                    sub_c69433d7 = 0
                    sub_caafa996 = 0
                    j = 0
                    # nil
        if not sub_3253d0f8:
            sub_b8ee5289++
        else:
            wins++
            delegate 0x3f593a15eb60672687c32492b62ed3e10e149ec6 with:
               funct call.data[0 len 4]
                 gas gas_remaining - 50 wei
                args call.data[4 len calldata.size - 4]
            require delegate.return_code
}



}
