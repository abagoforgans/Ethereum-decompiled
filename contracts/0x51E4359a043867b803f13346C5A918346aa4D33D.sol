contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1840]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct instructor;
array of struct instructorAccts;

function getInstructor(address arg1) {
    return instructor[address(arg1)].field_0, 
           Mask(128, 128, instructor[address(arg1)].field_256),
           instructor[address(arg1)].field_384 << 128
}

function instructorAccts(uint256 arg1) {
    require arg1 < instructorAccts.length
    return instructorAccts[arg1].field_0
}

function countInstructors() {
    return instructorAccts.length
}

function _fallback() payable {
    revert
}

function setInstructor(address arg1, uint256 arg2, bytes16 arg3, bytes16 arg4) {
    require msg.sender == stor0
    instructor[address(arg1)].field_0 = arg2
    instructor[address(arg1)].field_256 = arg3
    instructor[address(arg1)].field_384 = arg4
    instructorAccts.length++
    if not instructorAccts.length <= instructorAccts.length + 1:
        idx = instructorAccts.length + 1
        while instructorAccts.length > idx:
            instructorAccts[idx].field_0 = 0
            idx = idx + 1
            continue 
    instructorAccts[instructorAccts.length].field_0 = arg1
    emit instructorInfo(Mask(128, 128, arg3), Mask(128, 128, arg4), arg2);
}

function getInstructors() {
    if not instructorAccts.length:
        mem[(32 * instructorAccts.length) + 160] = 32
        mem[(32 * instructorAccts.length) + 192] = instructorAccts.length
        mem[(32 * instructorAccts.length) + 224 len floor32(instructorAccts.length)] = mem[160 len floor32(instructorAccts.length)]
        return memory
          from (32 * instructorAccts.length) + 160
           len (96 * instructorAccts.length) + 64
    mem[160] = address(instructorAccts.field_0)
    idx = 160
    s = 0
    while (32 * instructorAccts.length) + 128 > idx:
        mem[idx + 32] = instructorAccts[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * instructorAccts.length) + 224 len floor32(instructorAccts.length)] = mem[160 len floor32(instructorAccts.length)]
    return Array(len=instructorAccts.length, data=mem[160 len floor32(instructorAccts.length)], mem[(32 * instructorAccts.length) + floor32(instructorAccts.length) + 224 len (32 * instructorAccts.length) - floor32(instructorAccts.length)]), 
}



}
