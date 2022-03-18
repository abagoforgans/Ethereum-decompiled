contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor4DB7;

function _fallback() payable {
    mem[96 len -2437] = code.data[2982 len -2437]
    mem[64] = -2277
    stor4DB7 = 1
    stor1 = mem[96]
    stor2 = tx.origin or Mask(96, 160, stor2)
    bool(stor3.length) = 0
    uint255(stor3.length.field_1) = 10
    Mask(248, 0, stor3.length.field_8) = 'individual' / 256
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7 = tx.origin or Mask(96, 160, stor7)
    stor6 = mem[160]
    return code.data[545 len 2437]
}



// =====================  Runtime code  =====================


const getVersion = 1


mapping of uint256 stor0;
address sub_8666ea1dAddress;
uint256 stor1;
address owner;
uint256 stor2;
array of uint256 sub_a1d602e3;
array of uint256 sub_a1973084;
array of uint256 stor5;
address stor7;

function sub_8666ea1d(?) payable {
    return address(sub_8666ea1dAddress)
}

function getOwner() payable {
    return address(owner)
}

function sub_a1973084(?) payable {
    return sub_a1973084[0 len sub_a1973084.length]
}

function sub_a1d602e3(?) payable {
    return sub_a1d602e3[0 len sub_a1d602e3.length]
}

function remove() payable {
    if stor7 != tx.origin:
        emit 0x56d36fc8: 0, 64, 38, '[Shareholder][remove] Error: Not', ' Owner'
    emit 0x56d36fc8: 1, Array(len=49, data='[Shareholder][remove] Result: Sh', 'areholder Removed')
    if address(owner) != tx.origin:
        selfdestruct(tx.origin)
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function sub_fc080f62(?) payable {
    if 1 == stor0[tx.origin]:
        stor0[arg1] = arg2
}

function sub_538de0ec(?) payable {
    if 1 == stor0[tx.origin]:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setOwner(address arg1) payable {
    if tx.origin == address(owner):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_cc4bd7c1(?) payable {
    call arg1.0x1d6df939 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c2a0f88f(?) payable {
    call address(sub_8666ea1dAddress).0x1d6df939 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_ff3214af(?) payable {
    if tx.origin == address(owner):
        if not arg1:
            stor5[] = Array(len=arg2.length, data=arg2[all])
        else:
            sub_a1973084[] = Array(len=arg2.length, data=arg2[all])
}

function sub_aa3ed427(?) payable {
    if stor7 != tx.origin:
        emit 0x56d36fc8: 0, 64, 52, '[Shareholder][transferAssets] Er', 'ror: Not Share Owner'
    else:
        call arg2.0xc2a0f88f with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if ext_call.return_data[0] != 1:
            emit 0x56d36fc8: 0, 64, 76, '[Shareholder][transferAssets] Er', 'ror: Beneficiary not verified by', ' Otonomos/VE'
        else:
            call arg1.0x71e24fe with:
                 gas gas_remaining - 25050 wei
                args address(arg2), arg3, arg4
            require ext_call.success
}



}
