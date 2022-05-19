contract main {




// =====================  Runtime code  =====================


const ROLE_BOUNCER = ''


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address stor3;
mapping of uint8 stor99;

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    require arg1
    stor3 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    if owner != msg.sender:
        require msg.sender == stor3
    stor2[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    if owner != msg.sender:
        require msg.sender == stor3
    stor2[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
}

function addBouncer(address arg1) {
    require msg.sender == owner
    require arg1
    stor[sha3(0, 0, 1)][address(arg1)] = 1
    emit RoleAdded(address arg1, string arg2):
                   address(arg1),
                   64,
                   7,
                   0,
}

function removeBouncer(address arg1) {
    require msg.sender == owner
    require arg1
    stor[sha3(0, 0, 1)][address(arg1)] = 0
    emit RoleRemoved(address arg1, string arg2):
                     address(arg1),
                     64,
                     7,
                     0,
}

function addAddressesToWhitelist(address[] arg1) {
    if owner != msg.sender:
        require msg.sender == stor3
    idx = 0
    while idx < arg1.length:
        if owner != msg.sender:
            require msg.sender == stor3
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit WhitelistedAddressAdded(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function handleOffchainWhitelisted(address arg1, bytes arg2) {
    if msg.sender == owner:
        if stor2[address(arg1)]:
            return 1
        mem[128 len arg2.length] = arg2[all]
        mem[ceil32(arg2.length) + 128] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + 156] = sha3(this.address, arg1)
        if arg2.length != 65:
            if stor[sha3(0, 0, 1)][0]:
                if owner != msg.sender:
                    require msg.sender == stor3
                stor2[address(arg1)] = 1
                emit WhitelistedAddressAdded(arg1);
            return bool(stor[sha3(0, 0, 1)][0])
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if stor[sha3(0, 0, 1)][0]:
                    if owner != msg.sender:
                        require msg.sender == stor3
                    stor2[address(arg1)] = 1
                    emit WhitelistedAddressAdded(arg1);
                return bool(stor[sha3(0, 0, 1)][0])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if stor1[mem[128 len 7]][address(signer)]:
            if owner != msg.sender:
                require msg.sender == stor3
            stor2[address(arg1)] = 1
            emit WhitelistedAddressAdded(arg1);
        return bool(stor1[mem[128 len 7]][address(signer)])
    require msg.sender == stor3
    if stor2[address(arg1)]:
        return 1
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg2.length) + 156] = sha3(this.address, arg1)
    if arg2.length != 65:
        if stor[sha3(0, 0, 1)][0]:
            if owner != msg.sender:
                require msg.sender == stor3
            stor2[address(arg1)] = 1
            emit WhitelistedAddressAdded(arg1);
        return bool(stor[sha3(0, 0, 1)][0])
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            if stor[sha3(0, 0, 1)][0]:
                if owner != msg.sender:
                    require msg.sender == stor3
                stor2[address(arg1)] = 1
                emit WhitelistedAddressAdded(arg1);
            return bool(stor[sha3(0, 0, 1)][0])
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor[sha3(0, 0, 1)][address(signer)]:
        if owner != msg.sender:
            require msg.sender == stor3
        stor2[address(arg1)] = 1
        emit WhitelistedAddressAdded(arg1);
    return bool(stor[sha3(0, 0, 1)][address(signer)])
}



}
