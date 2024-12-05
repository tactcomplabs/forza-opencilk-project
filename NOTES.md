To implement the legalization processes outlined in Min Hsu’s article on LLVM code generation, you’ll need to modify or extend several files within the LLVM codebase. Here’s a structured overview of the key files and the specific additions or changes required:

1. TargetLowering Implementation

   File: <Target>ISelLowering.cpp
   Purpose: Define the target’s type legalization strategies and specify how unsupported types are transformed into supported ones.
   • Additions:
   • Implement the TargetLowering class for your target, focusing on the getTypeAction and getTypeToTransformTo methods to handle type legalization.
   • Specify actions for unsupported types, such as promoting, expanding, or softening them to types natively supported by the target architecture.

2. SelectionDAG Legalization

   • File: LegalizeDAG.cpp
   • Purpose: Manage the transformation of illegal operations into legal ones during the SelectionDAG phase.
   • Additions:
   • Implement custom lowering hooks in your target’s TargetLowering class to handle specific operations that require special treatment during legalization.
   • Define how certain operations should be expanded or transformed to align with the target’s capabilities.

3. Target Instruction Definitions

   • File: <Target>InstrInfo.td
   • Purpose: Define the target’s instruction set, including legal and custom instructions.
   • Additions:
   • Specify the legal instructions supported by the target.
   • Define custom pseudo-instructions or patterns to represent operations that need to be expanded or lowered during legalization.

4. Target-Specific DAG-to-DAG Transformations

   • File: <Target>ISelDAGToDAG.cpp
   • Purpose: Implement target-specific transformations of the SelectionDAG to handle custom lowering and optimization.
   • Additions:
   • Implement the Select function to match and replace illegal operations with legal sequences or target-specific instructions.
   • Define patterns to recognize and transform specific DAG nodes that require custom handling.

5. Target-Specific Legalization Hooks

   • File: <Target>LegalizeTypes.cpp
   • Purpose: Provide target-specific hooks for type legalization, especially for complex types like vectors.
   • Additions:
   • Implement methods to handle the legalization of complex types, such as vector splitting or widening, according to the target’s capabilities.
   • Define how unsupported vector operations should be transformed or lowered.

6. Target-Specific Lowering of Intrinsics

   • File: <Target>ISelLowering.cpp
   • Purpose: Handle the lowering of target-specific intrinsics during the SelectionDAG phase.
   • Additions:
   • Implement the LowerOperation method to provide custom lowering for target-specific intrinsics or operations that are not natively supported.
   • Define how these intrinsics should be expanded or transformed into legal operations.

7. Target-Specific Instruction Selection Patterns

   • File: <Target>InstrInfo.td
   • Purpose: Define instruction selection patterns to map LLVM IR operations to target-specific instructions.
   • Additions:
   • Specify Instruction and Pattern entries to match LLVM IR operations and map them to the appropriate target instructions.
   • Define custom patterns for operations that require special handling during instruction selection.

8. Target-Specific Calling Convention Handling

   • File: <Target>CallingConv.td
   • Purpose: Define the target’s calling conventions, including how arguments and return values are handled.
   • Additions:
   • Specify how different types are passed to and from functions, especially for types that require legalization.
   • Define custom calling convention rules for handling complex types or operations.

9. Target-Specific Register Information

   • File: <Target>RegisterInfo.td
   • Purpose: Define the target’s register classes and their properties.
   • Additions:
   • Specify which registers can hold which types, informing the type legalization process.
   • Define custom register classes for handling specific types or operations.

10. Target-Specific Instruction Selection TableGen Definitions

    • File: <Target>ISelLowering.td
    • Purpose: Define patterns and rules for instruction selection using TableGen.
    • Additions:
    • Specify Instruction and Pattern entries to match LLVM IR operations and map them to the appropriate target instructions.
    • Define custom patterns for operations that require special handling during instruction selection.

11. Target-Specific Legalization of Vector Operations

    • File: <Target>LegalizeVectorOps.cpp
    • Purpose: Handle the legalization of vector operations that are not natively supported by the target.
    • Additions:
    • Implement methods to split, widen, or scalarize vector operations according to the target’s capabilities.
    • Define how unsupported vector operations should be transformed or lowered.

12. Target-Specific Lowering of Atomic Operations

    • File: <Target>AtomicExpandPass.cpp
    • Purpose: Handle the lowering of atomic operations that are not natively supported by the target.
    • Additions:
    • Implement methods to expand atomic operations into sequences of legal instructions.
    • Define how unsupported atomic operations should be transformed or lowered.

13. Target-Specific Lowering of Floating-Point Operations

    • File: <Target>LowerFPOps.cpp
    • Purpose: Handle the lowering of floating-point operations that are not natively supported by the target.
    • Additions:
    • Implement methods to expand or transform floating-point operations into sequences of legal instructions.
    •
