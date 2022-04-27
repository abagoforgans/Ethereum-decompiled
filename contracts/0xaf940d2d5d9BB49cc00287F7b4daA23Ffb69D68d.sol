contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor2 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor0 = msg.sender
    stor1 = code.data[3621 len 20]
    return code.data[262 len 3347]
}



// =====================  Runtime code  =====================


const orderFills(address arg1, bytes32 arg2) = 0

const myBalance = eth.balance(this.address)


address adminAddress;
address sub_4bf4f423Address;
address stor2;
address stor3;

function sub_4bf4f423(?) {
    return sub_4bf4f423Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_07e274d1(?) {
    stor3 = stor2
}

function sub_a4664894(?) {
    require msg.sender == adminAddress
    sub_4bf4f423Address = arg1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
  stop
}

function sub_3f0a76a2(?) {
    require msg.sender == sub_4bf4f423Address
    hash = sha256hash(stor2, 0, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    return hash
}

function sub_6e6e15e7(?) {
    require msg.sender == sub_4bf4f423Address
    hash = sha256hash(stor2, 0, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    require ext_code.size(stor3)
    call stor3.0x19774d43 with:
         gas gas_remaining - 710 wei
        args address(arg6), hash
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(stor3)
        call stor3.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg1), address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
        require ext_call.success
}



}
