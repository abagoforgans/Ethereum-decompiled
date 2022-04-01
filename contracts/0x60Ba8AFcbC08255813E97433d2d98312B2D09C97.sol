contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3902]




// =====================  Runtime code  =====================


#
#  - createIssuedToken(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4, string arg5, uint8 arg6, string arg7)
#
array of address services;
mapping of uint256 ids;

function ids(address arg1) {
    return ids[arg1]
}

function services(uint256 arg1) {
    require arg1 < services.length
    return services[arg1]
}

function _fallback() payable {
    revert 
}

function isService(address arg1) {
    if services.length <= 0:
        return 0
    require ids[address(arg1)] < services.length
    if services[stor1[address(arg1)]] != arg1:
        return 0
    if not arg1:
        return 0
    return 1
}



}
