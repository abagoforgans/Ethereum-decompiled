contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor1 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor3 = 0xb40d0312bac389ae0a05053020aac80c9237358b
    stor4 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor5 = 0
    stor6 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[149 len 1064]
}



// =====================  Runtime code  =====================


address sub_113b67c9Address;
address sub_00b1d5e9Address;
address owner;
address stor3;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function sub_00b1d5e9(?) {
    return sub_00b1d5e9Address
}

function sub_113b67c9(?) {
    return sub_113b67c9Address
}

function owner() {
    return owner
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

function _fallback() payable {
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
    stor5++
}

function sub_6f064aa5(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3.length
    if not arg3.length:
        idx = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
        while stor9 + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
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
        while stor9 + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
