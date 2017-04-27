//  Created by dasdom on 04/04/2017.
//  Copyright © 2017 dasdom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AutoLayout)

/**
 Create and activate constraints that pin the edges of the receiver to that of the passed in view.

 @param otherView The view to pin to. If this parameter is nil, the superview is used.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView;

/**
 Create and optionally activate constraints that pin the edges of the receiver to that of the passed in view.

 @param otherView The view to pin to. If this parameter is nil, the superview is used.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView activate:(BOOL)activate;

/**
 Create and activate constraints that pin the edges of the receiver to that of the passed in view using insets.

 @param otherView The view to pin to. If this parameter is nil, the superview is used.
 @param insets The insets to use for the constraints.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView insets:(UIEdgeInsets)insets;

/**
 Create and optionally activate constraints that pin the edges of the receiver to that of the passed in view using insets.

 @param otherView The view to pin to. If this parameter is nil, the superview is used.
 @param insets The insets to use for the constraints.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView insets:(UIEdgeInsets)insets activate:(BOOL)activate;

/**
 Create and activate constraints that align the edges of the receiver with that of the passed in view along the specified axis.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param axis The axis for the alignment.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)alignWith:(UIView *)otherView alongAxis:(UILayoutConstraintAxis)axis;

/**
 Create and optionally activate constraints that align the edges of the receiver with that of the passed in view along the specified axis.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param axis The axis for the alignment.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)alignWith:(UIView *)otherView alongAxis:(UILayoutConstraintAxis)axis activate:(BOOL)activate;

/**
 Create and activate constraints for width and heigth.

 @param size The width and height for the constraints.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)setSize:(CGSize)size;

/**
 Create and optionally activate constraints for width and heigth.

 @param size The width and height for the constraints.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)setSize:(CGSize)size activate:(BOOL)activate;

/**
 Create and activate width constraint.

 @param width The width for the constraint.
 @return The created and activated constraint.
 */
- (NSLayoutConstraint *)setWidth:(CGFloat)width;

/**
 Create and optionally activate width constraint.

 @param width The width for the constraint.
 @param activate If this parameter is false, the constraints are not activated.
 @return The created constraint.
 */
- (NSLayoutConstraint *)setWidth:(CGFloat)width activate:(BOOL)activate;

/**
 Create and activate height constraint.

 @param height The height for the constraint.
 @return The created and activated constraint.
 */
- (NSLayoutConstraint *)setHeight:(CGFloat)height;

/**
 Create and optionally activate height constraint.

 @param height The height for the constraint.
 @param activate If this parameter is false, the constraints are not activated.
 @return The created constraint.
 */
- (NSLayoutConstraint *)setHeight:(CGFloat)height activate:(BOOL)activate;

/**
 Create and activate constraints that center the receiver within the passed in view.

 @param otherView The view to center to. If this parameter is nil, the superview is used.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView;


/**
 Create and optionally activate constraints that center the receiver within the passed in view.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView activate:(BOOL)activate;


/**
 Create and activate constraints that center the receiver within the passed in view using an offset.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param offset The offset for the constraints.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset;


/**
 Create and optionally activate constraints that center the receiver within the passed in view using an offset.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param offset The offset for the constraints.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset activate:(BOOL)activate;


/**
 Create and activate constraints that center the receiver within the passed in view using an offset and size.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param offset The offset for the constraints.
 @param size The size for the constraints.
 @return An array with the created and activated constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset size:(CGSize)size;

/**
 Create and optionally activate constraints that center the receiver within the passed in view using an offset and size.

 @param otherView The view to align to. If this parameter is nil, the superview is used.
 @param offset The offset for the constraints.
 @param size The size for the constraints.
 @param activate If this parameter is false, the constraints are not activated.
 @return An array with the created constraints.
 */
- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset size:(CGSize)size activate:(BOOL)activate;
@end
