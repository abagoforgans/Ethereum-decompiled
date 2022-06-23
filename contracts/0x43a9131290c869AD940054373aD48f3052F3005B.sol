contract main {




// =====================  Runtime code  =====================


const sub_6594eac3(?) = 'CnusPoolForStaking'

const sub_6ebd4940(?) = 'CnusToken'

const sub_b25ba451(?) = 'TokenPool'

const sub_ba33cde5(?) = 'BnusToken'


address owner;
address newOwner;
address sub_e9b2acbaAddress;
address stor3;
mapping of uint256 stakeOf;

function stakeOf(address arg1) {
    return stakeOf[address(arg1)]
}

function owner() {
    return owner
}

function getStakedAmount() {
    return stakeOf[address(msg.sender)]
}

function newOwner() {
    return newOwner
}

function sub_e9b2acba(?) {
    return sub_e9b2acbaAddress
}

function _fallback() payable {
    revert
}

function setRegistry(address arg1) {
    require msg.sender == owner
    stor3 = arg1
}

function sub_82f91c75(?) {
    require msg.sender == owner
    sub_e9b2acbaAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_48c35d46(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 128] = 32
    require stor3
    require ext_code.size(stor3)
    call stor3.0xbb34534c with:
         gas gas_remaining wei
        args 'TokenPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[ceil32(arg3.length) + 192] = 64
        if arg3.length != 65:
            require not sub_e9b2acbaAddress
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_e9b2acbaAddress == address(signer)
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    require not sub_e9b2acbaAddress
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require sub_e9b2acbaAddress == address(signer)
        require arg2 >= block.timestamp
    require ext_code.size(stor3)
    call stor3.0xbb34534c with:
         gas gas_remaining wei
        args 'CnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 + stakeOf[msg.sender] >= stakeOf[msg.sender]
    stakeOf[msg.sender] += arg1
    emit Deposit(arg1, block.timestamp, msg.sender);
}

function withdraw(uint256 arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 128] = 32
    require stor3
    require ext_code.size(stor3)
    call stor3.0xbb34534c with:
         gas gas_remaining wei
        args 'TokenPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        mem[ceil32(arg3.length) + 192] = 64
        if arg3.length != 65:
            require not sub_e9b2acbaAddress
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require sub_e9b2acbaAddress == address(signer)
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    require not sub_e9b2acbaAddress
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require sub_e9b2acbaAddress == address(signer)
        require arg2 >= block.timestamp
    require arg1 <= stakeOf[msg.sender]
    require ext_code.size(stor3)
    call stor3.0xbb34534c with:
         gas gas_remaining wei
        args 'CnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= stakeOf[msg.sender]
    stakeOf[msg.sender] -= arg1
    emit Withdrawal(arg1, block.timestamp, msg.sender);
}



}
