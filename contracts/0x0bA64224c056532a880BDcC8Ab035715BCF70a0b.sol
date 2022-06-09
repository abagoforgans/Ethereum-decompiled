contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1)
#
uint8 stor3E8;
uint8 stor3E8; offset 8
uint256 stor3E8; offset 8
address owner;
mapping of uint8 stor1102;
mapping of uint8 stor1153;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor1207;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor1259;
array of uint256 tokenByIndex;
mapping of uint256 stor1261;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
mapping of uint8 stor1415;
mapping of uint8 stor1566;
uint8 paused;
array of uint256 stor14806638297713580617663141673359789409473612456805470745910940343168235985581;

function supportsInterface(bytes4 arg1) {
    return bool(stor481[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isPauser(address arg1) {
    require arg1
    return bool(stor61E[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function isSigner(address arg1) {
    require arg1
    return bool(stor44E[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor587[address(arg1)])
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4B7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function renouncePauser() {
    require msg.sender
    stor61E[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    stor587[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceSigner() {
    require msg.sender
    stor44E[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function pause() {
    require msg.sender
    require stor61E[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused()
}

function addPauser(address arg1) {
    require msg.sender == owner
    require arg1
    stor61E[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender == owner
    require arg1
    stor587[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addSigner(address arg1) {
    require msg.sender == owner
    require arg1
    stor44E[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function removeSigner(address arg1) {
    require msg.sender == owner
    require arg1
    stor44E[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function removeMinter(address arg1) {
    require msg.sender == owner
    require arg1
    stor587[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function removePauser(address arg1) {
    require msg.sender == owner
    require arg1
    stor61E[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require msg.sender
    require stor61E[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused()
}

function setApprovalForAll(address arg1, bool arg2) {
    require not paused
    require arg1 != msg.sender
    stor4B7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not paused
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4B7[stor4B4[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(address arg1, uint256 arg2) {
    require not paused
    require msg.sender
    require stor587[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor4EB[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor4ED[arg2] = tokenByIndex.length
    tokenByIndex.length++
    stor20BC[stor4EC.length] = arg2
    return 1
}

function initialize() {
    if not uint8(stor3E8.field_8):
        if ext_code.size(this.address):
            if uint8(stor3E8.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor3E8.field_0) = 1
    uint8(stor3E8.field_8) = 1
    Mask(248, 0, stor3E8.field_8) = 0
    require stor481[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    stor481[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor3E8.field_8) = Mask(248, 0, bool(uint8(stor3E8.field_8)))
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require not paused
    require msg.sender
    require stor587[address(msg.sender)]
    require arg1
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor4EB[arg2] = tokenOfOwnerByIndex[address(arg1)]
    emit Transfer(0, arg1, arg2);
    stor4ED[arg2] = tokenByIndex.length
    tokenByIndex.length++
    stor20BC[stor4EC.length] = arg2
    require ownerOf[arg2]
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    return 1
}

function withdraw(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require not paused
    signer = erecover(sha3(msg.sender, arg1, arg2), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require stor44E[address(signer)]
    require msg.sender
    require not ownerOf[arg1]
    ownerOf[arg1] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    stor4EB[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    emit Transfer(0, msg.sender, arg1);
    stor4ED[arg1] = tokenByIndex.length
    tokenByIndex.length++
    stor20BC[stor4EC.length] = arg1
    return 1
}

function initialize(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if not uint8(stor3E8.field_8):
        if ext_code.size(this.address):
            if uint8(stor3E8.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor3E8.field_0) = 1
    uint8(stor3E8.field_8) = 1
    Mask(248, 0, stor3E8.field_8) = 0
    require stor481[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    name.length = (2 * arg1.length) + 1
    s = sha3(1312)
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(1312) + (Mask(251, 0, arg1.length + 31) >> 5)
    while sha3(1312) + (name.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * arg2.length) + 1
    s = sha3(1313)
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(1313) + (Mask(251, 0, arg2.length + 31) >> 5)
    while sha3(1313) + (symbol.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor481[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor3E8.field_8) = Mask(248, 0, bool(uint8(stor3E8.field_8)))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4B7[stor4B4[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor4EB[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor4EB[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor4EB[arg3] = 0
    stor4EB[stor4EA[address(arg1)][stor4EA[address(arg1)]]] = stor4EB[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor4EB[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4B7[stor4B4[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor4EB[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor4EB[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor4EB[arg3] = 0
    stor4EB[stor4EA[address(arg1)][stor4EA[address(arg1)]]] = stor4EB[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor4EB[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require not paused
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4B7[stor4B4[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor4EB[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor4EB[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor4EB[arg3] = 0
    stor4EB[stor4EA[address(arg1)][stor4EA[address(arg1)]]] = stor4EB[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor4EB[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}



}
