contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0x3d962705bb92d570b5e465b56fae80870639625b
    stor1 = 0xe3031c1bfaa7825813c562cbdcc69d96fcad2087
    return code.data[102 len 1264]
}



// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;

function owner() {
    return owner
}

function authorizedCaller() {
    return authorizedCallerAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeAuthorizedCaller(address arg1) {
    require owner == msg.sender
    authorizedCallerAddress = arg1
}

function sub_0bbf3a87(?) {
    idx = 0
    while idx < arg1:
        mem[96 len 664] = code.data[557 len 664]
        mem[760] = owner
        mem[792] = authorizedCallerAddress
        create contract with 0 wei
                        code: code.data[557 len 664], owner, authorizedCallerAddress
        require create.new_address
        idx = idx + 1
        continue 
}



}
