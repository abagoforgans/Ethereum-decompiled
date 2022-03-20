contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 10154]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of address sub_be32bb4a;
mapping of uint8 isRegistered;
address sub_499a622eAddress;
uint256 stor4;
address sub_e9466c13Address;
uint256 stor5;

function count() payable {
    return sub_be32bb4a.length
}

function sub_499a622e(?) payable {
    return address(sub_499a622eAddress)
}

function owner() payable {
    return address(owner)
}

function sub_be32bb4a(?) payable {
    require arg1 < sub_be32bb4a.length
    return address(sub_be32bb4a[arg1])
}

function isRegistered(address arg1) payable {
    return isRegistered[address(arg1)]
}

function sub_e9466c13(?) payable {
    return address(sub_e9466c13Address)
}

function _fallback() payable {
  stop
}

function sub_5608c7b2(?) payable {
    if msg.sender == address(owner):
    require tx.origin == address(owner)
}

function sub_15decae8(?) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function sub_986927ed(?) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_ce9607a8(?) payable {
    create contract with 0 wei
                    code: code.data[3181 len 6973]
    call address(create.new_address).0xb7446945 with:
         gas gas_remaining - 25050 wei
        args address(sub_499a622eAddress)
    require ext_call.success
    call address(create.new_address).0x9cef3c5e with:
         gas gas_remaining - 25050 wei
        args address(sub_e9466c13Address)
    call address(create.new_address).setBool(bytes32 rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args 'isOpen', arg1
    call address(create.new_address).setBytes32(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args 'currency', arg2
    call address(create.new_address).setUint(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 'disputeSeconds', arg3
    call address(create.new_address).setUint(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 'minTotal', arg4
    call address(create.new_address).setUint(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args 'affiliateFeeCentiperun', arg5
    call address(create.new_address).0x2808241a with:
         gas gas_remaining - 25050 wei
        args Array(len=arg6.length, data=arg6[all])
    require ext_call.success
    if not arg7:
        call address(create.new_address).0x13af4035 with:
             gas gas_remaining - 25050 wei
            args msg.sender
        require ext_call.success
    else:
        call address(create.new_address).setAlias(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args arg7
        require ext_call.success
        call address(create.new_address).0x13af4035 with:
             gas gas_remaining - 25050 wei
            args msg.sender
    sub_be32bb4a.length++
    if not sub_be32bb4a.length <= sub_be32bb4a.length + 1:
        idx = sub_be32bb4a.length + 1
        while sub_be32bb4a.length > idx:
            uint256(sub_be32bb4a[idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_be32bb4a[sub_be32bb4a.length]) = create.new_address or Mask(96, 160, uint256(sub_be32bb4a[sub_be32bb4a.length]))
    isRegistered[address(create.new_address)] = 1
    emit Registration(address(create.new_address));
}



}
