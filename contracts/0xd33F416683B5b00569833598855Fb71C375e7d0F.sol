contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = code.data[4316 len 32]
    create contract with 0 wei
                    code: code.data[436 len 1412], this.address
    uint256(stor0) = create.new_address or Mask(96, 160, uint256(stor0))
    create contract with 0 wei
                    code: code.data[1848 len 1412], address(this.address)
    uint256(stor1) = create.new_address or Mask(96, 160, uint256(stor1))
    call address(stor0).setReceiver(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(stor1)
    require ext_call.success
    call address(stor1).setReceiver(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(stor0)
    return code.data[3260 len 1056]
}



// =====================  Runtime code  =====================


const dao = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413


address owner;
address receiveAddress;
uint256 stor1;
uint256 proposalId;
address sub_99b24e0aAddress;
uint256 stor3;
uint256 myBalance;
uint256 sub_46d473e8;
uint8 stor6;

function proposalId() payable {
    return proposalId
}

function sub_46d473e8(?) payable {
    return sub_46d473e8
}

function owner() payable {
    return owner
}

function sub_99b24e0a(?) payable {
    return address(sub_99b24e0aAddress)
}

function myBalance() payable {
    return myBalance
}

function canTransfer() payable {
    return bool(stor6)
}

function receiveAddress() payable {
    return address(receiveAddress)
}

function setReceiver(address arg1) payable {
    if address(receiveAddress) != 0:
        require owner == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function transferBack() payable {
    require owner == msg.sender
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(receiveAddress), ext_call.return_data[0]
}

function sub_c17c7d2a(?) payable {
    require owner == msg.sender
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    myBalance = ext_call.return_data[0]
    sub_46d473e8 = arg3
    proposalId = arg1
    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
    stor6 = 1
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args arg1, address(arg2)
}

function _fallback() payable {
    if sub_46d473e8 > 0:
        sub_46d473e8--
        call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args proposalId, address(sub_99b24e0aAddress)
        require ext_call.success
    else:
        if stor6:
            stor6 = 0
            call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args address(receiveAddress), myBalance
            require ext_call.success
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
