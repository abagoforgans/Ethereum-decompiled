contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor1.length++
    if not stor1.length > stor1.length + 1:
        address(stor1[stor1.length]) = stor0
        stor1.length++
    else:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
        address(stor1[stor1.length]) = stor0
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                uint256(stor1[idx]) = 0
                idx = idx + 1
                continue 
    address(stor1[stor1.length]) = stor0
    stor3 += 2
    return code.data[466 len 2030]
}



// =====================  Runtime code  =====================


address owner;
array of address participants;
uint256 payoutIndex;
uint256 payoutCount;
uint256 fees;

function payoutIndex() {
    return payoutIndex
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1])
}

function payoutCount() {
    return payoutCount
}

function owner() {
    return owner
}

function fees() {
    return fees
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function collectFees() {
    require msg.sender == owner
    if fees:
        call owner with:
           value fees wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        fees = 0
}

function enter() payable {
    if msg.value < 2 * 10^17:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 'Low value!'
    participants.length++
    if not participants.length > participants.length + 1:
        address(participants[participants.length]) = msg.sender
        participants.length++
    else:
        idx = participants.length + 1
        while participants.length > idx:
            uint256(participants[idx]) = 0
            idx = idx + 1
            continue 
        address(participants[participants.length]) = msg.sender
        participants.length++
        if not participants.length <= participants.length + 1:
            idx = participants.length + 1
            while participants.length > idx:
                uint256(participants[idx]) = 0
                idx = idx + 1
                continue 
    address(participants[participants.length]) = msg.sender
    payoutCount += 2
    require payoutIndex < participants.length
    call address(participants[stor2]) with:
       value 19 * 10^16 wei
         gas 0 wei
    require ext_call.success
    call msg.sender with:
       value msg.value - 2 * 10^17 wei
         gas 2300 * is_zero(value) wei
    fees += 10^16
    require payoutIndex < participants.length
    address(participants[stor2]) = 0
    payoutIndex++
    return 'Successfully joined the queue!'
}

function _fallback() payable {
    if msg.value < 2 * 10^17:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        participants.length++
        if not participants.length > participants.length + 1:
            address(participants[participants.length]) = msg.sender
            participants.length++
        else:
            idx = participants.length + 1
            while participants.length > idx:
                uint256(participants[idx]) = 0
                idx = idx + 1
                continue 
            address(participants[participants.length]) = msg.sender
            participants.length++
            if not participants.length <= participants.length + 1:
                idx = participants.length + 1
                while participants.length > idx:
                    uint256(participants[idx]) = 0
                    idx = idx + 1
                    continue 
        address(participants[participants.length]) = msg.sender
        payoutCount += 2
        require payoutIndex < participants.length
        call address(participants[stor2]) with:
           value 19 * 10^16 wei
             gas 0 wei
        require ext_call.success
        call msg.sender with:
           value msg.value - 2 * 10^17 wei
             gas 2300 * is_zero(value) wei
        fees += 10^16
        require payoutIndex < participants.length
        address(participants[stor2]) = 0
        payoutIndex++
}



}
