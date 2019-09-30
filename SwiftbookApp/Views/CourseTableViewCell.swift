//
//  CourseCell.swift
//  SwiftbookApp
//
//  Created by Alexey Efimov on 04/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    func configure(with course: Course) {
        textLabel?.text = course.name
        guard let imageURL = URL(string: course.imageUrl!) else { return }
        guard let imageData = try? Data(contentsOf: imageURL) else { return }
        imageView?.image = UIImage(data: imageData)
    }

}
