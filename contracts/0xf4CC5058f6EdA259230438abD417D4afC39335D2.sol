contract main {




// =====================  Runtime code  =====================


address rootAuthorityAddress;
mapping of struct authorities;

function rootAuthority() {
    return rootAuthorityAddress
}

function authorities(address arg1) {
    return bool(authorities[arg1].field_0), 
           authorities[arg1].field_0,
           authorities[arg1].field_256,
           authorities[arg1].field_512,
           authorities[arg1].field_768
}

function _fallback() payable {
    revert
}

function isRootAuthority(address arg1) {
    if arg1 != rootAuthorityAddress:
        return 0
    return 1
}

function changeRootAuthority(address arg1) {
    if msg.sender == rootAuthorityAddress:
        rootAuthorityAddress = arg1
}

function revokeAuthority(address arg1, uint256 arg2) {
    if msg.sender == rootAuthorityAddress:
        authorities[address(arg1)].field_256 = msg.sender
        authorities[address(arg1)].field_768 = arg2
}

function isValidAuthority(address arg1, uint256 arg2) {
    if not authorities[address(arg1)].field_0:
        return 0
    if authorities[address(arg1)].field_512 > arg2:
        return 0
    if authorities[address(arg1)].field_768:
        if authorities[address(arg1)].field_768 < arg2:
            return 0
    return 1
}

function approveAuthority(address arg1) {
    if msg.sender == rootAuthorityAddress:
        authorities[address(arg1)].field_0 = 1
        authorities[address(arg1)].field_8 = msg.sender
        authorities[address(arg1)].field_256 = 0
        authorities[address(arg1)].field_512 = 0
        authorities[address(arg1)].field_512 = block.number
        authorities[address(arg1)].field_768 = 0
}



}
