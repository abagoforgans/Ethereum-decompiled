contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
mapping of bool tokenURI;
address sub_fdbd648cAddress;
address controllerAddress;
address sub_77668946Address;
uint64 stor11;
uint256 stor11; offset 64
uint256 stor11;
mapping of struct sub_18cb71fe;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function sub_18cb71fe(?) {
    return sub_18cb71fe[arg1].field_768
}

function sub_56fa44a6(?) {
    return bool(sub_18cb71fe[arg1].field_0)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_77668946(?) {
    return sub_77668946Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getBeneficiary(bytes32 arg1) {
    return sub_18cb71fe[arg1].field_0
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function getFee(bytes32 arg1) {
    return sub_18cb71fe[arg1].field_1024
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function controller() {
    return controllerAddress
}

function sub_fdbd648c(?) {
    return sub_fdbd648cAddress
}

function kill() {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    selfdestruct(sub_fdbd648cAddress)
}

function _fallback() payable {
  stop
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_c000c9e6(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    sub_fdbd648cAddress = arg1
}

function sub_e16981ca(?) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    sub_77668946Address = arg1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setController(address arg1) {
    if sub_fdbd648cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '#Controller onlyStaked Modifier: Only Staked can call this'
    controllerAddress = arg1
}

function sub_c311ba44(?) {
    if controllerAddress != msg.sender:
        if sub_77668946Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#SPRToken onlyStakedController Modifier: Only Staked Controller can call this'
    sub_18cb71fe[arg1].field_0 = 0
    sub_18cb71fe[arg1].field_256 = 0
    sub_18cb71fe[arg1].field_512 = 0
    sub_18cb71fe[arg1].field_768 = 0
    sub_18cb71fe[arg1].field_1024 = 0
    sub_18cb71fe[arg1].field_1280 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    sub_18cb71fe[arg3].field_0 = arg2
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
}

function burn(uint256 arg1) {
    require ownerOf[arg1]
    require ownerOf[arg1]
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            require stor4[stor1[arg1]][address(msg.sender)]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    if approved[arg1]:
        approved[arg1] = 0
    require 1 <= balanceOf[stor1[arg1]]
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(arg1, ownerOf[arg1], 0);
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    sub_18cb71fe[arg3].field_0 = arg2
    sub_18cb71fe[arg3].field_0 = arg2
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    sub_18cb71fe[arg3].field_0 = arg2
    sub_18cb71fe[arg3].field_0 = arg2
    sub_18cb71fe[arg3].field_0 = arg2
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
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

function sub_416cde44(?) {
    if controllerAddress != msg.sender:
        if sub_77668946Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '#SPRToken onlyStakedController Modifier: Only Staked Controller can call this'
    if sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_0:
        revert with 0, '#Treasury insert(): This SPRT already exists'
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_0 = uint64(arg1) << 96
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_256 = uint64(arg2) << 96
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_512 = arg3
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_768 = arg4
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_1024 = arg5
    sub_18cb71fe[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)].field_1280 = uint256(stor11.field_0)
    uint256(stor11.field_0)++
    require arg1
    require not ownerOf[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)]
    ownerOf[arg1][arg2][arg3][arg4][arg5][Mask(192, 0, stor11.field_64)][uint64(stor11.field_0)] = arg1
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    emit Transfer(sha3(arg1, arg2, arg3, arg4, arg5, Mask(192, 0, stor11.field_64), uint64(stor11.field_0)), 0, arg1);
    return sha3(arg1, arg2, arg3, arg4, arg5, Mask(192, 0, stor11.field_64), uint64(stor11.field_0))
}



}
