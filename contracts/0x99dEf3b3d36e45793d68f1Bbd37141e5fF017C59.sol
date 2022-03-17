contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    call 0xc6d9d2cd449a754c494264e1809c50e34d64562b.register(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args 1, this.address
    require ext_call.success
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[239 len 1186]
}



// =====================  Runtime code  =====================


const configAddr = 0xc6d9d2cd449a754c494264e1809c50e34d64562b


mapping of uint256 sub_81bc3f8c;
mapping of address to;

function toAddress(bytes32 arg1) payable {
    return address(to[arg1])
}

function sub_81bc3f8c(?) payable {
    return sub_81bc3f8c[arg1]
}

function _fallback() payable {
  stop
}

function unregister() payable {
    if sub_81bc3f8c[address(msg.sender)]:
        emit AddressDeregistered(address(to[stor1[address(msg.sender)]]));
        sub_81bc3f8c[address(msg.sender)] = 0
        address(to[stor1[address(msg.sender)]]) = 0
}

function register(bytes32 arg1) payable {
    if not address(to[arg1]):
        if sub_81bc3f8c[address(msg.sender)]:
            address(to[stor1[address(msg.sender)]]) = 0
        sub_81bc3f8c[address(msg.sender)] = arg1
        uint256(to[arg1]) = msg.sender or Mask(96, 160, uint256(to[arg1]))
        emit AddressRegistered(msg.sender);
}



}
