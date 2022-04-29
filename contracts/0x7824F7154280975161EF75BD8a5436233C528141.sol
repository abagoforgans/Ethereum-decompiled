contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor1 = 0x3d962705bb92d570b5e465b56fae80870639625b
    stor0 = 0xe3031c1bfaa7825813c562cbdcc69d96fcad2087
    return code.data[102 len 1146]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require stor1 == msg.sender
    stor1 = arg1
}

function changeAuthorizedCaller(address arg1) {
    require stor1 == msg.sender
    stor0 = arg1
}

function sub_0bbf3a87(?) {
    idx = 0
    while idx < arg1:
        mem[96 len 664] = code.data[439 len 664]
        mem[760] = stor1
        mem[792] = stor0
        create contract with 0 wei
                        code: code.data[439 len 664], stor1, stor0
        require create.new_address
        idx = idx + 1
        continue 
}



}
