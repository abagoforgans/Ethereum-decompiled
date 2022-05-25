contract main {




// =====================  Runtime code  =====================


array of struct authorizer;
mapping of uint256 stor1;

function getAuthorizer(uint256 arg1) {
    require arg1 + 1 < authorizer.length
    return authorizer[arg1].field_256
}

function _fallback() payable {
    revert
}

function isAuthorized(address arg1) {
    return (stor1[address(arg1)] > 0)
}

function addAuthorized(address arg1) {
    require stor1[address(msg.sender)] > 0
    stor1[address(arg1)] = authorizer.length
    authorizer.length++
    if authorizer.length > authorizer.length + 1:
        idx = authorizer.length + 1
        while authorizer.length > idx:
            authorizer[idx].field_0 = 0
            idx = idx + 1
            continue 
    require authorizer.length - 1 < authorizer.length
    authorizer[authorizer.length].field_0 = arg1
}



}
