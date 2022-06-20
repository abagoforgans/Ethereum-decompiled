contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 valueDecimals;
mapping of uint256 sub_52ddf4b2;
mapping of uint256 sub_e99d7516;
mapping of uint256 sub_023f1532;
mapping of uint256 sub_7c05a2a7;
array of uint256 sub_a78e5fa6;
array of uint256 tokenURI;
array of uint256 tokenIPFS;
uint256 totalSupply;
mapping of address ownerOf;
mapping of address approvedFor;
array of struct balanceOf;
mapping of uint256 stor14;

function sub_023f1532(?) {
    return sub_023f1532[arg1]
}

function name() {
    return name[0 len name.length]
}

function sub_120bd022(?) {
    return tokenIPFS[arg1][0 len tokenIPFS[arg1].length]
}

function totalSupply() {
    return totalSupply
}

function approvedFor(uint256 arg1) {
    return approvedFor[arg1]
}

function valueDecimals() {
    return valueDecimals
}

function sub_4132ec8d(?) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function sub_52ddf4b2(?) {
    return sub_52ddf4b2[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)].field_0
}

function sub_7c05a2a7(?) {
    return sub_7c05a2a7[arg1]
}

function tokenIPFS(uint256 arg1) {
    return tokenIPFS[arg1][0 len tokenIPFS[arg1].length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a78e5fa6(?) {
    return sub_a78e5fa6[arg1][0 len sub_a78e5fa6[arg1].length]
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function sub_e99d7516(?) {
    return sub_e99d7516[arg1]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if approvedFor[arg2]:
        approvedFor[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approvedFor[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0xffffffff00000000000000000000000000000000000000000000000000000000:
        return 0
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7c0633c600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000)
}

function sub_2a8fe62a(?) {
    if 0x3eb832992c3f2db11baaf03f44a6caf9c0679e02 != msg.sender:
        require msg.sender == 0xfa38803a9d7a4dfa670d659e36119c6c4ecabfc4
    require arg1
    require not sub_7c05a2a7[arg2]
    sub_52ddf4b2[arg2] = arg3
    sub_e99d7516[arg2] = arg4
    sub_023f1532[arg2] = arg5
    sub_7c05a2a7[arg2] = arg6
    tokenIPFS[arg2][] = Array(len=arg7.length, data=arg7[all])
    tokenURI[arg2][] = Array(len=arg8.length, data=arg8[all])
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require arg1
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = arg2
    stor14[arg2] = balanceOf[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(arg2, 0, arg1);
}

function tokensOf(address arg1) {
    if not balanceOf[address(arg1)].field_0:
        mem[(32 * balanceOf[address(arg1)].field_0) + 128] = 32
        mem[(32 * balanceOf[address(arg1)].field_0) + 160] = balanceOf[address(arg1)].field_0
        mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
        return memory
          from (32 * balanceOf[address(arg1)].field_0) + 128
           len (96 * balanceOf[address(arg1)].field_0) + 64
    mem[128] = balanceOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * balanceOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = balanceOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
    return Array(len=balanceOf[address(arg1)].field_0, data=mem[128 len floor32(balanceOf[address(arg1)].field_0)], mem[(32 * balanceOf[address(arg1)].field_0) + floor32(balanceOf[address(arg1)].field_0) + 192 len (32 * balanceOf[address(arg1)].field_0) - floor32(balanceOf[address(arg1)].field_0)]), 
}

function takeOwnership(uint256 arg1) {
    require approvedFor[arg1] == msg.sender
    require ownerOf[arg1]
    require msg.sender
    require ownerOf[arg1]
    require ownerOf[arg1] != msg.sender
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    approvedFor[arg1] = 0
    emit Approval(arg1, ownerOf[arg1], 0);
    require ownerOf[arg1]
    require ownerOf[arg1] == ownerOf[arg1]
    require ownerOf[arg1]
    require 1 <= balanceOf[stor11[arg1]].field_0
    require balanceOf[stor11[arg1]].field_0 - 1 < balanceOf[stor11[arg1]].field_0
    ownerOf[arg1] = 0
    require stor14[arg1] < balanceOf[stor11[arg1]].field_0
    balanceOf[stor11[arg1]][stor14[arg1]].field_0 = balanceOf[stor11[arg1]][balanceOf[stor11[arg1]].field_0].field_0
    require balanceOf[stor11[arg1]].field_0 - 1 < balanceOf[stor11[arg1]].field_0
    balanceOf[stor11[arg1]][balanceOf[stor11[arg1]].field_0].field_0 = 0
    balanceOf[stor11[arg1]].field_0--
    if balanceOf[stor11[arg1]].field_0 > balanceOf[stor11[arg1]].field_0 - 1:
        idx = balanceOf[stor11[arg1]].field_0 - 1
        while balanceOf[stor11[arg1]].field_0 > idx:
            balanceOf[stor11[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor14[arg1] = 0
    stor14[stor13[stor11[arg1]][stor13[stor11[arg1]].field_0].field_0] = stor14[arg1]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg1]
    ownerOf[arg1] = msg.sender
    require msg.sender
    balanceOf[address(msg.sender)].field_0++
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = arg1
    stor14[arg1] = balanceOf[address(msg.sender)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require arg1
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    approvedFor[arg2] = 0
    emit Approval(arg2, msg.sender, 0);
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require msg.sender
    require 1 <= balanceOf[address(msg.sender)].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    ownerOf[arg2] = 0
    require stor14[arg2] < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][stor14[arg2]].field_0 = balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = 0
    balanceOf[address(msg.sender)].field_0--
    if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0 - 1:
        idx = balanceOf[address(msg.sender)].field_0 - 1
        while balanceOf[address(msg.sender)].field_0 > idx:
            balanceOf[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor14[arg2] = 0
    stor14[stor13[address(msg.sender)][stor13[address(msg.sender)].field_0].field_0] = stor14[arg2]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    require arg1
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = arg2
    stor14[arg2] = balanceOf[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(arg2, msg.sender, arg1);
}



}
