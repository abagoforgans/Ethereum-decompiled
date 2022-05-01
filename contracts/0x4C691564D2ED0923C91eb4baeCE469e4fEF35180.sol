contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = code.data[6230 len 20]
    stor1 = code.data[6262 len 20]
    return code.data[203 len 6015]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
uint256 numProposals;
mapping of struct sub_24610baf;
array of uint256 sub_9909fe5c;
mapping of uint8 stor5;
mapping of uint256 sub_efbef75a;

function sub_24610baf(?) {
    return sub_24610baf[arg1].field_0
}

function sub_399d617a(?) {
    return bool(stor5[arg1][address(arg2)])
}

function numProposals() {
    return numProposals
}

function getState(uint256 arg1) {
    require sub_24610baf[arg1].field_672 <= 2
    return sub_24610baf[arg1].field_672
}

function sub_60c8b28d(?) {
    return bool(stor5[arg1][arg2])
}

function getNumProposals() {
    return numProposals
}

function sub_7c8651f2(?) {
    require arg2 < sub_9909fe5c[arg1]
    return sub_9909fe5c[arg1][arg2]
}

function sub_9909fe5c(?) {
    require arg2 < sub_9909fe5c[arg1]
    return sub_9909fe5c[arg1][arg2]
}

function sub_b0cdce4c(?) {
    return sub_24610baf[arg1].field_1024
}

function sub_b6f34aca(?) {
    return sub_9909fe5c[arg1]
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function getOwner(uint256 arg1) {
    return sub_24610baf[arg1].field_512
}

function sub_d1ef6a96(?) {
    return sub_efbef75a[arg1]
}

function getParentId(uint256 arg1) {
    return sub_24610baf[arg1].field_256
}

function sub_efbef75a(?) {
    return sub_efbef75a[arg1]
}

function sub_f1e483e7(?) {
    require sub_24610baf[arg1].field_672 <= 2
    return sub_24610baf[arg1].field_0, 
           sub_24610baf[arg1].field_256,
           sub_24610baf[arg1].field_512,
           sub_24610baf[arg1].field_512,
           sub_24610baf[arg1].field_768,
           sub_24610baf[arg1].field_1024
}

function admin() {
    return adminAddress
}

function getContentHash(uint256 arg1) {
    return sub_24610baf[arg1].field_768
}

function _fallback() payable {
    revert
}

function sub_3832fb94(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_efbef75a[arg1]++
}

function sub_05e69d4d(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_0 = arg2
}

function sub_128d3944(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_256 = arg2
}

function sub_380bd483(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_768 = arg2
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    if arg1:
        adminAddress = arg1
}

function sub_770c52e5(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_1024 = arg2
}

function sub_cca14931(?) {
    require msg.sender == adminAddress
    if arg1:
        sub_c23aa65aAddress = arg1
}

function sub_0c90525f(?) {
    require sub_24610baf[arg1].field_672 <= 2
    return not sub_24610baf[arg1].field_672
}

function setOwner(uint256 arg1, address arg2) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_512 = arg2
}

function sub_965ff5bc(?) {
    require msg.sender == sub_c23aa65aAddress
    require arg2 <= 2
    sub_24610baf[arg1].field_672 = arg2
}

function acceptProposal(uint256 arg1) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_672 = 1
    sub_24610baf[arg1].field_1024 = block.number
}

function rejectProposal(uint256 arg1) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[arg1].field_672 = 2
    sub_24610baf[arg1].field_1024 = block.number
}

function getProposal(uint256 arg1) {
    require sub_24610baf[arg1].field_672 <= 2
    return arg1 <= numProposals, 
           sub_24610baf[arg1].field_0,
           sub_24610baf[arg1].field_256,
           sub_9909fe5c[arg1],
           sub_24610baf[arg1].field_512,
           sub_24610baf[arg1].field_512,
           sub_24610baf[arg1].field_768,
           sub_24610baf[arg1].field_1024
}

function sub_d6db7748(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_24610baf[stor2 + 1].field_0 = arg2
    sub_24610baf[stor2 + 1].field_256 = arg1
    sub_24610baf[stor2 + 1].field_512 = arg4
    sub_24610baf[stor2 + 1].field_672 = 0
    sub_24610baf[stor2 + 1].field_768 = arg3
    sub_24610baf[stor2 + 1].field_1024 = block.number
    numProposals++
    return (numProposals + 1)
}

function sub_9577a2d7(?) {
    require msg.sender == sub_c23aa65aAddress
    sub_9909fe5c[arg1]++
    if not sub_9909fe5c[arg1] <= sub_9909fe5c[arg1] + 1:
        idx = sub_9909fe5c[arg1] + 1
        while sub_9909fe5c[arg1] > idx:
            sub_9909fe5c[arg1][idx] = 0
            idx = idx + 1
            continue 
    sub_9909fe5c[arg1][sub_9909fe5c[arg1]] = arg2
    sub_24610baf[arg1].field_1024 = block.number
    stor5[arg1][address(arg3)] = 1
}



}
